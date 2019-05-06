import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-dashboard-user-detail',
  templateUrl: './user-detail.component.html',
  styleUrls: ['./user-detail.component.css']
})
export class UserDetailComponent implements OnInit {

  userinfo: any;
  firstname: string;
  lastname: string;
  username: string;
  email: string;
  birthday: string;
  school: string;
  imgLink: string;

  constructor() { }

  ngOnInit() {
    this.userinfo = JSON.parse(localStorage.getItem('userinfo'));
    this.firstname = this.userinfo[0].firstName;
    this.lastname = this.userinfo[0].lastName;
    this.username = this.userinfo[0].username;
    this.email = this.userinfo[0].email;
    this.birthday = this.userinfo[0].birthday;
    this.school = this.userinfo[0].school;
    this.imgLink = this.userinfo[0].avatarLink;
    console.log(this.imgLink);
  }

}
