import { QuestionService } from './../_services/question.service';
import { Component, OnInit } from '@angular/core';
import { AuthenticationService, UserService } from '../_services';
import { Headers, RequestOptions } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import { JsonPipe } from '@angular/common';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {

  id: number;
  avatarLink: string;

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
    let a = this.userService.getByToken(this.headers).catch(this.handleError);
    a.subscribe(data => {
      console.log(JSON.parse(data._body));
      this.avatarLink = JSON.parse(data._body)[0].avatarLink;
    });
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

  private handleError(error: Response) {
    return Observable.throw(error);
  }

}
