import { Component, OnInit, Input } from '@angular/core';
import { Message } from '../_models/message.model';
import { HttpClient } from '@angular/common/http';
import { UserService } from '@app/_services/user.service';

@Component({
  selector: 'app-message',
  templateUrl: './message.component.html',
  styleUrls: ['./message.component.css']
})
export class MessageComponent implements OnInit {

  incoming: boolean = false;
  outgoing: boolean = false;
  avatarUrl: String = '';

  constructor(
    private http: HttpClient,
    private userService: UserService
  ) {

  }

  @Input() message: Message;

  ngOnInit() {
    console.log(this.message);
    if (this.userService.currentUserValue.username == this.message.sender) {
      this.outgoing = true;
      this.incoming = false;
    } else {
      this.outgoing = false;
      this.incoming = true;
    }
  }

}
