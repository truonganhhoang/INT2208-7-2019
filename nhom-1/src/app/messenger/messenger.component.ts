import { Component, OnInit } from '@angular/core';
import * as io from 'socket.io-client';
import { UserService } from '@app/_services';

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

  ngOnInit() {
  }
  
  connect() {
    this.socket = io('http://localhost:3000');
    console.log(this.userService.currentUserValue);
    this.socket.emit('login',{
      user1: this.userService.currentUserValue.username,
      user2: 'namphan'
    });
    
  }
  disconnect() {
    this.socket.disconnect();
  }

}
