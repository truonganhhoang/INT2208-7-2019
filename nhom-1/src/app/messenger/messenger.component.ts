import { Component, OnInit } from '@angular/core';
import * as io from 'socket.io-client';
import { UserService } from '@app/_services';
import { Message } from '../_models/message.model'

@Component({
  selector: 'app-messenger',
  templateUrl: './messenger.component.html',
  styleUrls: ['./messenger.component.css']
})
export class MessengerComponent implements OnInit {

  constructor(
    private userService: UserService
  ) { }

  socket:any;
  messages: Message[] = []; 

  ngOnInit() {
    this.socket = io('http://localhost:3000');
    this.socket.emit('join chat room',{
      user1: this.userService.currentUserValue.username,
      user2: 'namphan'
    });

    //this.socket.join(this.genRoom(this.userService.currentUserValue.username,'namphan'));
    this.socket.on('new message', (data)=>{
      let message = new Message(data);
      this.messages.push(message);
    });
  }

  sendMessage($event) {
    if ($event.target.value=="") return;
    let data = {
      sender: this.userService.currentUserValue.username,
      receiver: 'admin',
      content: $event.target.value,
      sendDate: new Date()
    }
    this.socket.emit('new message', data);
    this.messages.push(new Message(data));
    $event.target.value="";
  }

  genRoom(username1,username2) {
    return username1 > username2 ? username1.concat('_'+username2) : username2.concat('_'+username1+'_roomchat');
  }
  
}
