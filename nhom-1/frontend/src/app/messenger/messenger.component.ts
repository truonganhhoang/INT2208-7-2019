import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { UserService } from '@app/_services/user.service';
import { environment } from '@environments/environment.prod';
import { MessageService } from '@app/_services/message.service';
import { HttpClient } from '@angular/common/http';
import { Message } from '@app/_models/message.model';


@Component({
  selector: 'app-messenger',
  templateUrl: './messenger.component.html',
  styleUrls: ['./messenger.component.css']
})
export class MessengerComponent implements OnInit {

  constructor(
    private route: ActivatedRoute,
    private userService: UserService,
    private messageService: MessageService,
    private http: HttpClient,
    private router: Router
    )
  {
    // setInterval(()=>{
    //   this.router.navigate(['messenger'], { queryParams: {u:'foo'}});
    // });
    this.getChatList();
  }

  paramValue: String;
  roomList: ChatRoom[] = [];

  ngOnInit() {
    this.route.queryParams.subscribe(params=>{
      if (params.u) {
        this.paramValue = params.u;
        //find in chat list
        let found = false;
        for (let i = 0; i < this.roomList.length; i++) {
          if (this.roomList[i].sender == this.paramValue) {
            found = true;
            break;
          }
        }
        if (!found) {
          this.routeToFirstRoomChat();
        }
      } else {
        this.routeToFirstRoomChat();
      }
      console.log(params);
    });

    this.messageService.getMessageStream().subscribe((message: Message)=>{
        
    });
  }

  getChatList(): void {
    let username = this.userService.currentUserValue;
    this.http.get<any>(`${environment.apiUrl}/api/getlistchat`).subscribe((data)=>{
      if (data.state) {
        let nList = data.list.length;
        for (let i = 0; i < nList; i++) {
          let temp = new ChatRoom();
          temp.roomId = data.list[i]._id;
          temp.read = data.list[i].unread.length == 0 ? true : false;
          for (let j = 0; j < data.list[i].authors.length; j++) {
            if (data.list[i].authors[j] != username) {
              temp.sender = data.list[i].authors[j];
              break;
            }
          }
          this.roomList.push(temp);
        }
        this.roomList = this.roomList.sort((a,b)=>{
          if (a.lastMessage > b.lastMessage) return -1;
          else if (a.lastMessage < b.lastMessage) return 1;
          else return 0;
        });
      }
    });
  }

  routeToFirstRoomChat() {
    if (this.roomList.length <= 0) {
      this.router.navigate(['messenger']);
    }
    this.router.navigate(['messenger'], {queryParams: {u: this.roomList[0].sender}});
  }

}
