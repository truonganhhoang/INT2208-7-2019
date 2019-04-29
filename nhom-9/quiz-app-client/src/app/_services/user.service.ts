import { Injectable } from '@angular/core';
import { Http, Headers } from '@angular/http';

import { User } from '../_models';

@Injectable()
export class UserService {

    private headers = new Headers({ 'Content-Type': 'application/json' });

    private dataUrl = 'http://localhost:3000/';

    constructor(private http: Http) { }

    // getAll(httpOptions: string) {
    //     return this.http.get('/api/users', httpOptions);
    // }


    getById(id: number) {
        return this.http.get('/api/users' + id);
    }

    getByToken(headers: Headers) {
        return this.http.get('/api/users', {headers: headers});
    }

    register(user: User) {
        return this.http.post('/api/users/register', user);
    }

    update(user: User) {
        return this.http.put(`/users/` + user.id, user);
    }

    delete(id: number) {
        return this.http.delete(`/users/` + id);
    }
}