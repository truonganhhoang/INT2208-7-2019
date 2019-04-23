import { Component } from '@angular/core';
import { Router } from '@angular/router';

import { User } from './_models';
import { UserService } from './_services/user.service';

@Component({ selector: 'app', templateUrl: 'app.component.html' })
export class AppComponent {
    currentUser: User;

    constructor(
        private router: Router,
        private userService: UserService
    ) {
        this.userService.currentUser.subscribe(x => this.currentUser = x);
    }

    logout() {
        this.userService.logout();
        this.router.navigate(['/login']);
    }
}
