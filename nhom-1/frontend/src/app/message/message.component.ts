import { Component, OnInit, Input } from '@angular/core';
import { Message } from '../_models/message.model';
import { HttpClient } from '@angular/common/http';
import { UserService } from '@app/_services/user.service';
import { environment } from '@environments/environment';
import { DomSanitizer, SafeResourceUrl } from '@angular/platform-browser';

@Component({
  selector: 'app-message',
  templateUrl: './message.component.html',
  styleUrls: ['./message.component.css']
})
export class MessageComponent implements OnInit {

  incoming: boolean = false;
  outgoing: boolean = false;
  avatarUrl: any;
  name: String = '';

  constructor(
    private http: HttpClient,
    private userService: UserService,
    private santizier: DomSanitizer
  ) {

  }

  @Input() message: Message;

  ngOnInit() {
    if (this.userService.currentUserValue.username == this.message.sender) {
      this.outgoing = true;
      this.incoming = false;
    } else {
      this.outgoing = false;
      this.incoming = true;
    }
    this.http.get<any>(`${environment.apiUrl}/api/user`, {params:{username: this.message.sender.toString()}}).subscribe((res)=>{
      if (res.state) {
        if (res.user) {
          // res.user.avatarUrl = this.santizier.bypassSecurityTrustUrl(res.user.avatarUrl);
          this.avatarUrl = res.user.avatarUrl;
          this.name = res.user.name;
          console.log(this.avatarUrl);
        }
      }
    });
  }

}
