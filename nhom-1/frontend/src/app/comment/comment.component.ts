import { Component, OnInit, Input } from '@angular/core';
import { Comment } from '@app/_models/comment.model';
import { HttpClient } from '@angular/common/http';
import { environment } from '@environments/environment.prod';
import { Router } from '@angular/router';
import { Post } from '@app/_models/post.model';
import { UserService } from '@app/_services/user.service';

@Component({
  selector: 'app-comment',
  templateUrl: './comment.component.html',
  styleUrls: ['./comment.component.css']
})
export class CommentComponent implements OnInit {

  @Input() comment: Comment;
  @Input() post: Post;
  userInfo: any = {avatarUrl: '', name: ''};

  constructor(
    private http: HttpClient,
    private router: Router,
    private userService: UserService
  ) { }

  ngOnInit() {
    this.http.get<any>(`${environment.apiUrl}/api/user`, {params:{username: this.comment.author.toString()}}).subscribe((res)=>{
      if (res.state) {
        if (res.user) {
          this.userInfo.avatarUrl = res.user.avatarUrl;
          this.userInfo.name = res.user.name;
        }
      }
    });
  }

  routeToProfilePage() {
    this.router.navigate(['users', this.comment.author]);
  }
  
  deletePermission() {
    return (this.comment.author == this.userService.currentUserValue.username);
  }

  delete() {
    this.http.post<any>(`${environment.apiUrl}/api/delete-comment`, {postId: this.comment.postId, commentId: this.comment.commentId}).subscribe((res)=>{
      if (res.state) {
        console.log(res);
        let pointer = 0;
        let isFound = false;
        let n = this.post.comments.length;
        for (let i = 0; i < n; i++) {
            if (this.post.comments[i].commentId == this.comment.commentId) {
                pointer = i;
                isFound = true;
                break;
            }
        }
        if (isFound) {
            this.post.comments.splice(pointer,1);
        }
      }
    });
  }
}
