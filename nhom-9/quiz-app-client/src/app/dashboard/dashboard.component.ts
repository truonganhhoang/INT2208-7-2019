import { QuestionService } from './../_services/question.service';
import { Component, OnInit } from '@angular/core';
import { AuthenticationService, UserService } from '../_services';
import { Headers, RequestOptions } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import { JsonPipe } from '@angular/common';
import { User } from '../_models';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {

  id: number;
  avatarLink: string;
  userinfo: User[] = [];

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
    this.renderUserInfo();
    console.log(this.userinfo.length)
  }

  logout() {
    console.log('logging out');
    this.authService.logout();
    window.location.reload();
  }

  refresh(): void {
    window.location.reload();
  }

  renderUserInfo(): void {
    // this.userService.getByToken(this.headers);
    // localStorage.setItem('avatarLink', 'abc');
    let a = this.userService.getByToken(this.headers).catch(this.handleError);
    a.subscribe(data => {
      // this.avatarLink = JSON.parse(data._body)[0].avatarLink;
      // var user = JSON.parse(data._body)[0];
      // this.userinfo = new User(user.firstName, user.lastName, user.username, '', user.email, user.birthday, user.gender, user.role, 
      // user.school, user.id, user.avatarLink);
      const JSONarray = JSON.parse(data._body);
      JSONarray.forEach((element:
        { firstName: string;
          lastName: string;
          username: string;
          password: string;
          email: string;
          birthday: string;
          gender: string;
          role: string;
          school: string;
          id: number;
          avatarLink: string; }) => {
        this.userinfo.push(new User(
          element.firstName, element.lastName, element.username, element.password, element.email,
          element.birthday, element.gender, element.role, element.school, element.id, element.avatarLink
          ));
      });
    });
    // Observable.of(this.userinfo).subscribe(user => this.userinfo = user);
  }

  private handleError(error: Response) {
    return Observable.throw(error);
  }

}
