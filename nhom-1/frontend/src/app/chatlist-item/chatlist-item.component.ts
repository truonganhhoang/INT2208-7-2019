import { Component, OnInit, Input } from '@angular/core';
import { ChatRoom } from '@app/_models/chatroom.model';
import { HttpClient } from '@angular/common/http';
import { environment } from '@environments/environment';

@Component({
  selector: 'app-chatlist-item',
  templateUrl: './chatlist-item.component.html',
  styleUrls: ['./chatlist-item.component.css']
})
export class ChatlistItemComponent implements OnInit {

  @Input() chatlistItem: ChatRoom;
  @Input() selected: boolean;
  userInfo: any = {};

  constructor(
    private http: HttpClient
  ) {
  }

  ngOnInit() {
    this.http.get<any>(`${environment.apiUrl}/api/user`, {params:{username: this.chatlistItem.sender.toString()}}).subscribe((res)=>{
      if (res.state) {
        if (res.user) {
          this.userInfo.avatarUrl = res.user.avatarUrl;
          this.userInfo.name = res.user.name;
        }
      }
    });
  }

}
