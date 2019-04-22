import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { map } from 'rxjs/operators';
import { Observable } from 'rxjs';

@Injectable()
export class AuthenticationService {
    constructor(private http: Http) { }

    login(username: string, password: string) {
        let a = this.http.post('/api/users/authenticate/' + username, { username: username, password: password }).catch(this.handleError);
        // console.log(a);
        let b = 
            a.pipe(map(user => {
                
                // login successful if there's a jwt token in the response
                let usr_string = user['_body'].toString();
                let user_obj = JSON.parse(usr_string);
                if (user && user_obj['token']) {
                    // store user details and jwt token in local storage to keep user logged in between page refreshes
                    localStorage.setItem('currentUser', JSON.stringify(user_obj));
                }
                
                return user_obj;
            }));
        // console.log(a);
        return b;
    }

    private handleError(error: Response) {
        // console.log(error);
        return Observable.throw(error);
    }

    logout() {
        // remove user from local storage to log user out
        localStorage.removeItem('currentUser');
    }
}