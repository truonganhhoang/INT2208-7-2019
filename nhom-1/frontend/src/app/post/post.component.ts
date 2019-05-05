import { Component, OnInit, Input } from '@angular/core';
import { Post } from '@app/_models/post.model';
import { time_off } from '@app/_helpers/dateoff';
import { HttpClient } from '@angular/common/http';
import { environment } from '@environments/environment.prod';
import { Router } from '@angular/router';
import { UserService } from '@app/_services/user.service';

@Component({
  selector: 'app-post',
  templateUrl: './post.component.html',
  styleUrls: ['./post.component.css']
})
export class PostComponent implements OnInit {

  @Input() post: Post;
  userFromPost: any = {};
  liked: boolean = false;

  constructor(
    private http: HttpClient,
    private router: Router,
    private userService: UserService
  ) {
    console.log(this.post);
  }

  ngOnInit() {
    this.http.get<any>(`${environment.apiUrl}/api/user`, {params: {username: this.post.author.toString()}}).subscribe(res=>{
      if (res.state) {
        if (res.user) {
          this.userFromPost.avatarUrl = res.user.avatarUrl;
          this.userFromPost.name = res.user.name;
        }
      }
    });
    for (let i = 0; i < this.post.likes.length; i++) {
      if (this.post.likes[i]== this.userService.currentUserValue.username) {
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
      return (value/1000).toFixed(0) + 'k';
    } else 
    return value;
  }

  like() {
    if (this.liked) {
      this.post.likes = this.post.likes.filter(value=>{
        if (value != this.userService.currentUserValue.username) return true;
        return false;
      });
      this.http.post<any>(`${environment.apiUrl}/api/unlike-post`, {postId: this.post.postId.toString()}).subscribe(res=>{
        console.log(res);
      });
      this.liked = false;
    } else {
      this.post.likes.push(this.userService.currentUserValue.username);
      this.http.post<any>(`${environment.apiUrl}/api/like-post`, {postId: this.post.postId.toString()}).subscribe(res=>{
        console.log(res);
      });
      this.liked = true;
    }
  }


}
