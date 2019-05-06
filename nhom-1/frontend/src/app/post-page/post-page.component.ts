import { Component, OnInit, Input } from '@angular/core';
import { Post } from '@app/_models/post.model';
import { time_off } from '@app/_helpers/dateoff';
import { HttpClient } from '@angular/common/http';
import { environment } from '@environments/environment.prod';
import { Router, ActivatedRoute } from '@angular/router';
import { UserService } from '@app/_services/user.service';
import { Comment } from '@app/_models/comment.model';
import { routerNgProbeToken } from '@angular/router/src/router_module';

@Component({
  selector: 'app-post-page',
  templateUrl: './post-page.component.html',
  styleUrls: ['./post-page.component.css']
})
export class PostPageComponent implements OnInit {

  post: Post = new Post(null);
  userFromPost: any = {};
  liked: boolean = false;
  commentShow: boolean = false;

  constructor(
    private http: HttpClient,
    private router: Router,
    private userService: UserService,
    private route: ActivatedRoute
  ) {
    this.route.queryParams.subscribe((params)=>{
      if (params.id) {
        let postId = params.id;
        this.http.get<any>(`${environment.apiUrl}/api/get-post`, {params: {postid: postId}}).subscribe(res=>{
          this.post = new Post(res.post);
          this.http.get<any>(`${environment.apiUrl}/api/user`, { params: { username: this.post.author.toString() } }).subscribe(res => {
            if (res.state) {
              if (res.user) {
                this.userFromPost.avatarUrl = res.user.avatarUrl;
                this.userFromPost.name = res.user.name;
              }
            }
          });
          for (let i = 0; i < this.post.likes.length; i++) {
            if (this.post.likes[i] == this.userService.currentUserValue.username) {
              this.liked = true;
              break;
            }
          }
        });
      }
    });
  }

  ngOnInit() {
  }

  getDateOff() {
    return time_off(this.post.sendDate);
  }

  routeToUserProfilePage() {
    this.router.navigate(['users', this.post.author]);
  }

  getLikes() {
    let value = this.post.likes.length;
    if (value > 999) {
      return (value / 1000).toFixed(0) + 'k';
    } else
      return value;
  }

  like() {
    if (this.liked) {
      this.post.likes = this.post.likes.filter(value => {
        if (value != this.userService.currentUserValue.username) return true;
        return false;
      });
      this.http.post<any>(`${environment.apiUrl}/api/unlike-post`, { postId: this.post.postId.toString() }).subscribe(res => {
        console.log(res);
      });
      this.liked = false;
    } else {
      this.post.likes.push(this.userService.currentUserValue.username);
      this.http.post<any>(`${environment.apiUrl}/api/like-post`, { postId: this.post.postId.toString() }).subscribe(res => {
        console.log(res);
      });
      this.liked = true;
    }
  }

  showCommentTextArea() {
    this.commentShow = true;
  }

  getComments() {
    return this.post.comments.reverse();
  }

  submitComment($event) {
    $event.preventDefault();
    if ($event.shiftKey) return;
    let commentValue = $event.target.value;
    if (commentValue.trim() == '') return;
    $event.target.disabled = true;
    this.http.post<any>(`${environment.apiUrl}/api/post-comment`, { postId: this.post.postId.toString(), content: commentValue }).subscribe(res => {
      $event.target.value = '';
      $event.target.disabled = false;
      if (res.state) {
        let newComment = new Comment();
        newComment.sendDate = new Date(res.comment.sendDate);
        newComment.author = res.comment.sender;
        newComment.postId = this.post.postId;
        newComment.content = res.comment.content;
        this.post.comments.push(newComment);
      }
    });
  }


  deletePermission() {
    return this.post.author == this.userService.currentUserValue.username;
  }

  deletePost() {
    this.http.post<any>(`${environment.apiUrl}/api/delete-post`, { postId: this.post.postId.toString() }).subscribe(res => {
      if (res.state) {
        this.router.navigate(['']);
      }
    });
  }
}
