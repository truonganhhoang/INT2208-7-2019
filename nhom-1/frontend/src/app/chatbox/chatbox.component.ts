import { Component, OnInit, ViewChild, ElementRef, AfterViewChecked } from '@angular/core';
import { Message } from '../_models/message.model';
import { UserService } from '@app/_services/user.service';
import { ActivatedRoute } from '@angular/router';
import { MessageService } from '@app/_services/message.service';
import { HttpClient } from '@angular/common/http';
import { environment } from '@environments/environment.prod';

@Component({
  selector: 'app-chatbox',
  templateUrl: './chatbox.component.html',
  styleUrls: ['./chatbox.component.css']
})
export class ChatboxComponent implements OnInit, AfterViewChecked {

  @ViewChild('chatbox') private messageList: ElementRef;

  messageLoaders: MessageLoader[] = [];
  selectedChatRoom: String = null;
  messageShow: Message[] = [];

  constructor(
    private userService: UserService,
    private messageService: MessageService,
    private http: HttpClient,
    private route: ActivatedRoute
  ) {}

  
  ngOnInit() {

    this.messageService.getMessageStream().subscribe((newMessage: Message)=>{
      console.log(newMessage);
      let roomid = newMessage.roomId;
      for (let i = 0; i < this.messageLoaders.length; i++) {
        if (roomid == this.messageLoaders[i].roomId) {
          this.messageLoaders[i].messages.push(newMessage);
          break;
        }
      }
    });

    this.messageService.getSelectedRoomStream().subscribe((selected: String)=>{
      this.selectedChatRoom = selected;
      //find room in messageLoaders:
      let found = false;
      for (let i = 0; i < this.messageLoaders.length; i++) {
        if (this.selectedChatRoom == this.messageLoaders[i].roomId) {
          found = true;
          this.messageShow = this.messageLoaders[i].messages;
        }
      }
      if (!found) {
        this.http.get<any>(`${environment.apiUrl}/api/get-roomchat`, {params: {roomid: this.selectedChatRoom.toString()}}).subscribe((res)=>{
          if (res.roomchat) {
            let newMessageLoader = new MessageLoader();
            newMessageLoader.roomId = this.selectedChatRoom;
            let threadId = res.roomchat.thread;
            this.http.get<any>(`${environment.apiUrl}/api/get-threadchat`, {params: {thread: threadId}}).subscribe((resThread)=>{
              newMessageLoader.nextThread = resThread.thread.previous;
              //load message
              let messages = resThread.thread.messages;
              let messagesForLoad: Message[] = [];
              for (let i = 0; i < messages.length; i++) {
                let newMessage = new Message();
                newMessage.sendDate = messages[i].sendDate;
                newMessage.roomId = this.selectedChatRoom;
                newMessage.sender = messages[i].sender;
                newMessage.content = messages[i].content;
                messagesForLoad.push(newMessage);
              }
              newMessageLoader.messages = messagesForLoad;
              this.messageLoaders.push(newMessageLoader);
              this.messageShow = newMessageLoader.messages;
            });
          }
        });
      }
    });
  }


  ngAfterViewChecked() {
    this.messageList.nativeElement.scrollTop = this.messageList.nativeElement.scrollHeight;
  }

  sendMessage($event) {
    let messValue = $event.target.value;
    $event.target.value = '';
    if (messValue == '') return;
    let receiver = this.route.snapshot.queryParams.u;
    let newMessage = new Message();
    newMessage.content = messValue;
    newMessage.roomId = this.selectedChatRoom;
    newMessage.sendDate = new Date();
    newMessage.sender = this.userService.currentUserValue.username;
    this.messageService.sendMessage(receiver, newMessage);
  }

}


class MessageLoader {
  messages: Message[] = [];
  roomId: String;
  nextThread: String;
}
