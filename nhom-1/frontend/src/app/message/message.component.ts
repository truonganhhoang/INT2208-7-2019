import { Component, OnInit, Input } from '@angular/core';
import { Message } from '../_models/message.model';

@Component({
  selector: 'app-message',
  templateUrl: './message.component.html',
  styleUrls: ['./message.component.css']
})
export class MessageComponent implements OnInit {

  constructor() { }

  @Input() message: Message;

  ngOnInit() {
    
  }

}
