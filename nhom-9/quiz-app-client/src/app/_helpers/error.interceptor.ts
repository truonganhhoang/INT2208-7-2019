import { Injectable } from '@angular/core';
import { HttpRequest, HttpHandler, HttpEvent, HttpInterceptor, HttpResponse, HttpErrorResponse } from '@angular/common/http';
import { Observable } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { _throw } from 'rxjs/observable/throw';

import { AuthenticationService } from '../_services';

@Injectable()
export class ErrorInterceptor implements HttpInterceptor {
    constructor(private authenticationService: AuthenticationService) {}

    // intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    //     console.log('success');
    //     return next.handle(request).do((event: HttpEvent<any>) => {
    //         if (event instanceof HttpResponse) {
    //           // do stuff with response if you want
    //         }
    //       }, (err: any) => {
    //         if (err instanceof HttpErrorResponse) {
    //           if (err.status === 401) {
    //             // redirect to the login route
    //             // or show a modal
                
    //             this.authenticationService.logout();
    //             location.reload(true);
      
    //           }
    //         }
    //       });
    // }

    intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
        console.log('success');
        return next.handle(request).pipe(catchError(err => {
            if (err.status === 401) {
                // auto logout if 401 response returned from api
                this.authenticationService.logout();
                location.reload(true);
            }
            
            const error = err.error.message || err.statusText;
            return _throw(error);
        }));
    }
    
}