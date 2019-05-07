import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { map } from 'rxjs/operators';
import { Observable } from 'rxjs';

@Injectable()
export class ConfirmService {
    constructor() { }

    confirmed() {
        return true;
    }

}