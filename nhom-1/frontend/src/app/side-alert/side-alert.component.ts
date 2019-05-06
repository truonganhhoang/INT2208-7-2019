import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-side-alert',
  templateUrl: './side-alert.component.html',
  styleUrls: ['./side-alert.component.css']
})
export class SideAlertComponent implements OnInit {

  array: number[] = [];

  constructor() { }

  ngOnInit() {
    this.array.push(1);
    this.array.push(2);
    this.array.push(3);
    this.array.push(4);
  }

}
