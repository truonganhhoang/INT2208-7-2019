import { Component, OnInit, Input } from '@angular/core';
import { environment } from '@environments/environment.prod';
import { HttpClient } from '@angular/common/http';
import { UserService } from '@app/_services/user.service';

@Component({
  selector: 'app-chatlist',
  templateUrl: './chatlist.component.html',
  styleUrls: ['./chatlist.component.css']
})
export class ChatlistComponent implements OnInit {

  @Input() selectedItem;

  constructor(
      private userService: UserService,
      private http: HttpClient
    ) {}

  ngOnInit() {
    this.getChatList();
  }

  getChatList(): void {
    this.http.get<any>(`${environment.apiUrl}/api/getlistchat`).subscribe((data)=>{
      if (data.state) {
        console.log(data.list)
      }
    });
  }

}
