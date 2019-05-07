import { AuthenticationService } from './authentication.service';
import { Injectable } from '@angular/core';
import { Http, Headers, RequestOptions } from '@angular/http';
import { User } from '../_models';
import { Observable } from 'rxjs/Observable';

@Injectable()
export class UserService {
    private headers = new Headers({ 'Content-Type': 'application/json' });
    private dataUrl = 'http://localhost:3000';
    constructor(private http: Http,
        private authService: AuthenticationService) { }

    getById(id: number) {
        return this.http.get('/api/users' + id);
    }

    getByToken(header: Headers) {
        var dataUrl = this.dataUrl + '/api/users';
        // console.log(header);
        return this.http.get(dataUrl, {headers: header}).catch(this.handleError);
    }

    register(user: User) {
        // console.log(user);
        return this.http.post('/api/users/register', user);
    }

    update(user: User) {
        return this.http.put(`/users/` + user.id, user);
    }

    delete(id: number) {
        return this.http.delete(`/users/` + id);
    }
    getSubmitDetail(quizId: number) {
        const headers: Headers = new Headers({
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${this.authService.getToken()}`,
            'Accept': 'application/json',
            'Access-Control-Allow-Headers': 'Content-Type',
            'Access-Control-Allow-Origin': '*',
        });
        const getUrl = `/api/submitdetail/${quizId}`;
        return this.http.get(getUrl, { headers: headers }).catch(this.handleError);
    }
    submitAnswers() {

    }
    private handleError(error: Response) {
        return Observable.throw(error);
    }
}
