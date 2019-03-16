import { Component, OnInit } from '@angular/core';
import * as io from 'socket.io-client';

@Component({
  selector: 'app-messenger',
  templateUrl: './messenger.component.html',
  styleUrls: ['./messenger.component.css']
})
export class MessengerComponent implements OnInit {

  constructor() { }

  socket:any;

  ngOnInit() {
  }
  
  connect() {
    this.socket = io('http://localhost:3000');
    this.socket.emit('login','NAM');

  }
  disconnect() {
    this.socket.disconnect();
  }

}
