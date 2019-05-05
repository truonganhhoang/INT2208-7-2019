import { Component, OnInit, Input } from '@angular/core';
import { Alert } from '@app/_models/alert.model';
import { HttpClient } from '@angular/common/http';
import { UserService } from '@app/_services/user.service';
import { Router } from '@angular/router';
import { environment } from '@environments/environment.prod';
import { DomSanitizer } from '@angular/platform-browser';

@Component({
  selector: 'app-notify-item',
  templateUrl: './notify-item.component.html',
  styleUrls: ['./notify-item.component.css']
})
export class NotifyItemComponent implements OnInit {

  @Input() notify: Alert;
  userInfo: any = {avatarUrl: '', name: ''};

  constructor(
    private http: HttpClient,
    private userService: UserService,
    private router: Router
  ) {

  }

  ngOnInit() {
    this.http.get<any>(`${environment.apiUrl}/api/user`, {params:{username: this.notify.payload.sender.toString()}}).subscribe((res)=>{
      if (res.state) {
        if (res.user) {
          this.userInfo.avatarUrl = res.user.avatarUrl;
          this.userInfo.name = res.user.name;
        }
      }
    });
  }

  routeToDes() {
    if (this.notify.type == 'friend request' || this.notify.type == 'friend accepted') {
      this.router.navigate(['users',this.notify.payload.sender]);
    }
  }

  getNotifyContent() {
    if (this.notify.type=='like post') {
      if (this.notify.payload.author == this.userService.currentUserValue.username) {
        return this.userInfo.name + ' liked your post.'
      } else {
        return this.userInfo.name + ' liked a post that you subcribed.'
      }
    }
    if (this.notify.type=='comment to post') {
      if (this.notify.payload.author == this.userService.currentUserValue.username) {
        return this.userInfo.name + ' commented to your post.'
      } else {
        return this.userInfo.name + ' commented a post that you subcribed.'
      }
    }
    if (this.notify.type=='friend request') {
      return this.userInfo.name + ' sent you a friend request.'
    }
    if (this.notify.type=='friend accepted') {
      return this.userInfo.name + ' accepted your friend request.';
    }

    return '';
  }

}
