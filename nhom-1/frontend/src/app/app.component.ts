import { Component } from '@angular/core';
import { Router } from '@angular/router';

import { User } from './_models';
import { UserService } from './_services/user.service';
import { SideAlertService } from './_services/sideAlert.service';
import { HttpClient } from '@angular/common/http';
import { environment } from '@environments/environment';
import { Alert } from './_models/alert.model';

@Component({ selector: 'app', templateUrl: 'app.component.html' })
export class AppComponent {
    currentUser: User;
    searchKeyword: String;
    notifies: Alert[] = [];
    unreadNotify: number = 0;

    constructor(
        private router: Router,
        private userService: UserService,
        private sideAlertService: SideAlertService,
        private http: HttpClient
    ) {
        this.userService.currentUser.subscribe(x => {
            if (x==null) {
                this.notifies = [];
            }
            this.currentUser = x;
            this.setUpNotifyListener();
            this.sideAlertService.getAlertStream().subscribe((obj)=>{
                this.notifies.unshift(obj);
                this.unreadNotify++;
            });
        });
    }

    search() {
        this.router.navigate(['/search/' + this.searchKeyword])
    }

    logout() {
        this.userService.logout();
        this.router.navigate(['/login']);
    }

    setUpNotifyListener() {
        this.http.get<any>(`${environment.apiUrl}/api/get-notify`).subscribe((res)=>{
            if (res.state) {
                console.log(res.notifies);
                for (let i = 0; i < res.notifies.length; i++) {
                    this.notifies.push(new Alert(res.notifies[i]));
                }
                this.unreadNotify = res.unread;
            }
        });
    }

    getNotifies() {
        if (this.notifies.length < 12) {
            return this.notifies;
        } else {
            return this.notifies.slice(0,11);
        }
    }

    menuOpened() {
        this.http.get<any>(`${environment.apiUrl}/api/reset-notify`).subscribe(res=>{
            if (res.state) {
                this.unreadNotify = 0;
            }
        });
    }
}
