import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-dashboard-test',
  templateUrl: './dashboard-test.component.html',
  styleUrls: ['./dashboard-test.component.css']
})
export class DashboardTestComponent implements OnInit {

  constructor(private router: Router) { }

  ngOnInit() {
  }
  refresh(): void {
    window.location.reload();
  }
  onLogOut(): void {
    this.router.navigate(['/welcome']);
  }
}
