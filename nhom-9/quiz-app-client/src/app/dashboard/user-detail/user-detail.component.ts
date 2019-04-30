import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-dashboard-user-detail',
  templateUrl: './user-detail.component.html',
  styleUrls: ['./user-detail.component.css']
})
export class UserDetailComponent implements OnInit {

  @Input() imgLink: string;

  constructor() { }

  ngOnInit() {
  }

}
