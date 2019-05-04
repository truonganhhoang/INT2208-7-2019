import { Component, OnInit, Input } from '@angular/core';
import { Post } from '@app/_models/post.model';
import { time_off } from '@app/_helpers/dateoff';
import { HttpClient } from '@angular/common/http';
import { environment } from '@environments/environment.prod';

@Component({
  selector: 'app-post',
  templateUrl: './post.component.html',
  styleUrls: ['./post.component.css']
})
export class PostComponent implements OnInit {

  @Input() post: Post;
  userFromPost: any = {};

  constructor(
    private http: HttpClient
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
  }

  getDateOff() {
    return time_off(this.post.sendDate);
  }


}
