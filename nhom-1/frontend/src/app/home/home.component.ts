import { Component, OnInit, OnDestroy } from '@angular/core';
import { Subscription } from 'rxjs';
import { first } from 'rxjs/operators';

import { User } from '@app/_models';
import { UserService } from '@app/_services/user.service';

@Component({ templateUrl: 'home.component.html' })
export class HomeComponent implements OnInit, OnDestroy {
    currentUser: User;
    currentUserSubscription: Subscription;

    constructor(
        private userService: UserService
    ) {
        this.currentUserSubscription = this.userService.currentUser.subscribe(user => {
            this.currentUser = user;
        });
    }

    ngOnInit() {
        this.userService.get(this.currentUser.username).subscribe(data=>{
            this.currentUser = data.user;
        });
    }

    ngOnDestroy() {
        this.currentUserSubscription.unsubscribe();
    }
}
