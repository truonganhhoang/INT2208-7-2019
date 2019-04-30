import { Component, OnInit, Input } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ChatRoom } from '@app/_models/chatroom.model';

@Component({
  selector: 'app-chatlist',
  templateUrl: './chatlist.component.html',
  styleUrls: ['./chatlist.component.css']
})
export class ChatlistComponent implements OnInit {

  paramValue: String;
  roomList: ChatRoom[] = [];

  constructor(
      private route: ActivatedRoute,
      private router: Router
    ) { 
      
    }

  ngOnInit() {

  }

}
