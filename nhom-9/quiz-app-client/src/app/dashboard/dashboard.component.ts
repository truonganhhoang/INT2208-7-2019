import { Component, OnInit } from '@angular/core';
import { AuthenticationService, UserService } from '../_services';
import { Headers, RequestOptions } from '@angular/http';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {

  id: number;

  headers: Headers = new Headers({
     'Content-Type': 'application/json',
     'Authorization': `Bearer ${this.authService.getToken()}`,
     'Accept': 'application/json',
     'Access-Control-Allow-Headers': 'Content-Type',
     'Access-Control-Allow-Origin': '*', });
  httpOptions: RequestOptions = new RequestOptions({ headers: this.headers });

  constructor(private authService: AuthenticationService,
              private userService: UserService) { }

  ngOnInit() {
    // console.log(this.httpOptions.headers);
  }

  logout() {
    console.log('logging out');
    this.authService.logout();
    window.location.reload();
  }

  refresh(): void {
    window.location.reload();
  }

  renderAvatar(): void {
    this.userService.getByToken(this.headers);
    localStorage.setItem('avatarLink', 'abc');
  }

}
