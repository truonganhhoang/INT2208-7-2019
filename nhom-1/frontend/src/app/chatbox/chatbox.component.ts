import { Component, OnInit, ViewChild, ElementRef, AfterViewChecked } from '@angular/core';
import { Message } from '../_models/message.model';
import genRoomChat from './../common/generate-chatroom';
import { UserService } from '@app/_services/user.service';

@Component({
  selector: 'app-chatbox',
  templateUrl: './chatbox.component.html',
  styleUrls: ['./chatbox.component.css']
})
export class ChatboxComponent implements OnInit, AfterViewChecked {

  constructor(
    private userService: UserService
  ) {}

  @ViewChild('chatbox') private messageList: ElementRef;

  socket:any;
  messages: Message[] = []; 
  
  ngOnInit() {


  }

  ngAfterViewChecked() {
    this.messageList.nativeElement.scrollTop = this.messageList.nativeElement.scrollHeight;
  }

  sendMessage($event) {

  }

}
