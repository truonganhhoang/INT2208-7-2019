import { Component, OnInit, Input, OnChanges, SimpleChange, SimpleChanges } from '@angular/core';
import { ActivatedRoute, Router, RouterModule } from '@angular/router';
import { ChatRoom } from '@app/_models/chatroom.model';
import { MessageService } from '@app/_services/message.service';
import { HttpClient } from '@angular/common/http';
import { environment } from '@environments/environment';
import { UserService } from '@app/_services/user.service';
import { Message } from '@app/_models/message.model';
import { User } from '@app/_models/user';

@Component({
  selector: 'app-chatlist',
  templateUrl: './chatlist.component.html',
  styleUrls: ['./chatlist.component.css']
})
export class ChatlistComponent implements OnInit {

  paramValue: String;
  selectedChatRoom: String;
  roomList: ChatRoom[] = [];
  sortedRoomList: ChatRoom[];
  userInfo = {avatarUrl: '', name:'Loading...'};

  constructor(
      private route: ActivatedRoute,
      private router: Router,
      private messageService: MessageService,
      private http: HttpClient,
      private userService: UserService
    ) {
    }

  ngOnInit() {
    this.http.get<any>(`${environment.apiUrl}/api/user`, {params:{username: this.userService.currentUserValue.username}}).subscribe((res)=>{
      if (res.state) {
        if (res.user) {
          this.userInfo.avatarUrl = res.user.avatarUrl;
          this.userInfo.name = res.user.name;
        }
      }
    });

    
    this.http.get<any>(`${environment.apiUrl}/api/getlistchat`).subscribe((data)=>{
      if (data.state) {
        console.log(data);
        let nList = data.list.length;
        for (let i = 0; i < nList; i++) {
          let temp = new ChatRoom();
          temp.roomId = data.list[i]._id;
          temp.read = true;
          console.log(data.list[i]);
          for (let j = 0; j < data.list[i].unread.length; j++) {
            if (data.list[i].unread[j] == this.userService.currentUserValue.username) {
              temp.read = false;
            }
          }
          temp.thread = data.list[i].thread;
          temp.lastMessage = new Date(data.list[i].lastMessage);
          for (let j = 0; j < data.list[i].authors.length; j++) {
            if (data.list[i].authors[j] != this.userService.currentUserValue.username) {
              temp.sender = data.list[i].authors[j];
              break;
            }
          }
          this.roomList.push(temp);
        }
        this.sortRoomList();
        
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
            this.selectedChatRoom = this.roomList[i].roomId;
            this.messageService.updateSelectedRoom(this.selectedChatRoom);
            this.roomList[i].read = true;
            this.http.post<any>(`${environment.apiUrl}/api/mark-read`, {roomId: this.selectedChatRoom});
            break;
          }
        }
        if (!found) {
          this.http.get<any>(`${environment.apiUrl}/api/createroom`, {params: {'username': paramValue}}).subscribe((res)=>{
            console.log(res);
            if (res.state) {
              if (res.room) {
                let newRoom = new ChatRoom();
                newRoom.roomId = res.room._id;
                newRoom.read = true;
                for (let j = 0; j < res.room.unread.length; j++) {
                  if (res.room.unread[j] == this.userService.currentUserValue.username) {
                    newRoom.read = false;
                  }
                }
                newRoom.thread = res.room.thread;
                newRoom.lastMessage = new Date(res.room.lastMessage);
                for (let j = 0; j < res.room.authors.length; j++) {
                  if (res.room.authors[j] == this.userService.currentUserValue.username) {
                    continue;
                  }
                  newRoom.sender = res.room.authors[j];
                  break;
                }
                console.log(newRoom);
                this.roomList.push(newRoom);
                this.sortRoomList();
                this.selectedChatRoom = newRoom.roomId;
                this.messageService.updateSelectedRoom(this.selectedChatRoom);
              } else {
                this.routeToFirstRoomChat();
              }
            }
          });
        }
      } else {
        this.routeToFirstRoomChat();
      }
      this.listenToMessage();
    });

  }

  listenToMessage() {
    this.messageService.getMessageStream().subscribe((newMessage: Message)=>{
      //find Room:
      let found = false;
      for (let i = 0; i < this.roomList.length; i++) {
        if (this.roomList[i].roomId == newMessage.roomId) {
          found = true;
          this.roomList[i].lastMessage = new Date(newMessage.sendDate);
          this.roomList[i].read = false;
          if (this.roomList[i].roomId == this.selectedChatRoom) {
            this.roomList[i].read = true;
            this.http.post<any>(`${environment.apiUrl}/api/mark-read`, {roomId: this.selectedChatRoom});
          }
          this.sortRoomList();
          console.log(this.roomList);
          break;
        }
      }
      console.log(this.roomList);
      if (!found) {
        this.http.get<any>(`${environment.apiUrl}/api/get-roomchat`, {params: {'roomid': newMessage.roomId.toString()}}).subscribe((res)=>{
          if (res.roomchat) {
            let newRoom = new ChatRoom();
            newRoom.lastMessage = new Date(res.roomChat.lastMessage);
            newRoom.read = true;
            this.http.post<any>(`${environment.apiUrl}/api/mark-read`, {roomId: this.selectedChatRoom});
            newRoom.thread = res.roomChat.thread;
            newRoom.roomId = res.roomChat._id;
            for (let i = 0; i < res.roomChat.authors.length; i++) {
              if (res.roomChat.authors[i] == this.userService.currentUserValue.username) 
                continue;
              else {
                newRoom.sender = res.roomChat.authors[i];
                break;
              }
            }
            this.roomList.push(newRoom);
            this.sortRoomList();
          }
        });
      }
    }); 
  }

  sortRoomMethod(a: ChatRoom, b:ChatRoom) {
    if (a.lastMessage > b.lastMessage) return -1;
    if (a.lastMessage < b.lastMessage) return 1;
    return 0;
  }

  routeToFirstRoomChat() {
    if (this.roomList.length > 0) {
      this.router.navigate(['messenger'], {queryParams: {u: this.roomList[0].sender}});
    }
  }

  sortRoomList() {
    this.roomList = this.roomList.sort(this.sortRoomMethod);
  }

  checkIfRoomSelected(i: ChatRoom) {
    return i.roomId == this.selectedChatRoom;
  }

  selectChatRoom(i: ChatRoom) {
    this.router.navigate(['messenger'], {queryParams: {u : i.sender}});
  }

  read(i: ChatRoom) {
    return i.read;
  }
}
