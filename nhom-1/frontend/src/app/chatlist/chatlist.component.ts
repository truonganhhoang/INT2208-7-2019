import { Component, OnInit, Input } from '@angular/core';
import { environment } from '@environments/environment.prod';
import { HttpClient } from '@angular/common/http';
import { UserService } from '@app/_services/user.service';
import { MessageService } from '@app/_services/message.service';
import { Message } from '@app/_models/message.model';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-chatlist',
  templateUrl: './chatlist.component.html',
  styleUrls: ['./chatlist.component.css']
})
export class ChatlistComponent implements OnInit {

  @Input() selectedItem;
  paramValue: String;
  roomList: ChatRoom[] = [];

  constructor(
    ) {
    }

  ngOnInit() {
  }

}
