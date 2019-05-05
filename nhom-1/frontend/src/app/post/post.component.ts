import { Component, OnInit, Input } from '@angular/core';
import { Post } from '@app/_models/post.model';
import { time_off } from '@app/_helpers/dateoff';
import { HttpClient } from '@angular/common/http';
import { environment } from '@environments/environment.prod';
import { Router } from '@angular/router';
import { UserService } from '@app/_services/user.service';
import { Comment } from '@app/_models/comment.model';

@Component({
  selector: 'app-post',
  templateUrl: './post.component.html',
  styleUrls: ['./post.component.css']
})
export class PostComponent implements OnInit {

  @Input() post: Post;
  @Input() posts: Post[];
  userFromPost: any = {};
  liked: boolean = false;
  commentShow: boolean = false;
  fullMode: boolean = false;

  constructor(
    private http: HttpClient,
    private router: Router,
    private userService: UserService
  ) {
    console.log(this.post);
  }

  ngOnInit() {
    this.fullMode = this.post.comments.length < 10;
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
    if (this.post.comments.length < 10 || this.fullMode)
      return this.post.comments.reverse();
    else 
      return this.post.comments.reverse().slice(0,8);
  }

  submitComment($event) {
    $event.preventDefault();
    if ($event.shiftKey) return;
    let commentValue = $event.target.value;
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

  activeFullMode() {
    this.fullMode = true;
  }

  deletePermission() {
    return this.post.author == this.userService.currentUserValue.username;
  }

  deletePost() {
    this.http.post<any>(`${environment.apiUrl}/api/delete-post`, { postId: this.post.postId.toString() }).subscribe(res => {
      if (res.state) {
        let pointer = 0;
        let isFound = false;
        let n = this.posts.length;
        for (let i = 0; i < n; i++) {
          if (this.posts[i].postId == this.post.postId) {
            pointer = i;
            isFound = true;
            break;
          }
        }
        if (isFound) {
          this.posts.splice(pointer, 1);
        }
      }
    });
  }


}
