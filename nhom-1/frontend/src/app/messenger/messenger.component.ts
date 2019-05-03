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
    )
  {

  }


  ngOnInit() {

  }

}
