import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { UserService } from '@app/_services/user.service';
import { environment } from '@environments/environment.prod';
import { MessageService } from '@app/_services/message.service';
import { HttpClient } from '@angular/common/http';
import { Message } from '@app/_models/message.model';
import { ChatRoom } from '@app/_models/chatroom.model';


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

  }

  paramValue: String;
  roomList: ChatRoom[] = [];

  ngOnInit() {
    let username = this.userService.currentUserValue;
    this.http.get<any>(`${environment.apiUrl}/api/getlistchat`).subscribe((data)=>{
      if (data.state) {
        let nList = data.list.length;
        for (let i = 0; i < nList; i++) {
          let temp = new ChatRoom();
          temp.roomId = data.list[i]._id;
          temp.read = data.list[i].unread.length == 0 ? true : false;
          temp.thread = data.list[i].thread;
          for (let j = 0; j < data.list[i].authors.length; j++) {
            if (data.list[i].authors[j] != this.userService.currentUserValue.username) {
              temp.sender = data.list[i].authors[j];
              break;
            }
          }
          this.roomList.push(temp);
        }
        console.log(this.roomList);
        this.makeSubcribe();
      }
    });
  }

  makeSubcribe() {
    this.route.queryParams.subscribe(params=>{
      if (params.u) {
        this.paramValue = params.u;
        let paramValue = params.u;
        //find in chat list
        let found = false;
        for (let i = 0; i < this.roomList.length; i++) {
          if (this.roomList[i].sender == this.paramValue) {
            found = true;
            break;
          }
        }
        if (!found) {
          this.http.get<any>(`${environment.apiUrl}/api/createroom`, {params: {'username': paramValue}}).subscribe((res)=>{
            if (res.state) {
              if (res.room) {
                let newRoom = new ChatRoom();
                newRoom.roomId = res.room._id;
                newRoom.read = res.room.unread.length == 0 ? true : false;
                newRoom.thread = res.room.thread;
                for (let j = 0; j < res.room.authors.length; j++) {
                  if (res.room.authors[j] == this.userService.currentUserValue.username) {
                    continue;
                  }
                  newRoom.sender = res.room.authors[j];
                  break;
                }
                console.log(newRoom);
                this.roomList.push(newRoom);
              } else {
                this.routeToFirstRoomChat();
              }
            }
          });
        }
      } else {
        this.routeToFirstRoomChat();
      }
    });

    this.messageService.getMessageStream().subscribe((message: Message)=>{
        
    });
  }

  routeToFirstRoomChat() {
    if (this.roomList.length > 0)
      this.router.navigate(['messenger'], {queryParams: {u: this.roomList[0].sender}});
  }

}
