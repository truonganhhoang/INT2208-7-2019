import { Component, OnInit, Input } from '@angular/core';
import { UserService } from '@app/_services';
import { environment } from '@environments/environment.prod';
import { HttpClient } from '@angular/common/http';

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
      if (!data.state) {
        
      }
    });
  }

}
