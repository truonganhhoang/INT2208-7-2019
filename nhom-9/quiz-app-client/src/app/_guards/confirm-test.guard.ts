import { Injectable } from '@angular/core';
import { Router, CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';

@Injectable()
export class ConfirmTestGuard implements CanActivate {

    constructor(private router: Router) { }

    canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot) {
        return true;
        // console.log(state.url);
        // if (localStorage.getItem('testing')) {
        //     // logged in so return true
        //     return true;
        // }

        // // // not logged in so redirect to login page with the return url
        // // this.router.navigate(['/'], { queryParams: { returnUrl: state.url }});
        // this.router.navigate([state.url]);
        // return false;
    }
}