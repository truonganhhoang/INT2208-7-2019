import { Question } from './../_models/question/question';
import { Questions } from './../_models/question/mock-question';
import { Injectable } from '@angular/core';
import { Http, Headers } from '@angular/http';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';

const httpOptions = {
  headers: new Headers({
      // 'Content-Type': 'application/json',
      // 'Authorization': 'my-auth-token',
      // 'Accept': 'application/json',
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Headers': 'Access-Control-Allow-Origin',

  })
};

@Injectable()
export class QuestionService {

  constructor(private http: Http) { }
  getTest(id: number): Question[] {
    // return Questions;
    var _res: Observable<Question[]>;
    var arr: Question[] = [];
    var getUrl = 'api/test'
    var url = `${getUrl}/${id}`;
    let res = this.http.get(url).catch(this.handleError);
    res.subscribe(data => {
      _res = JSON.parse(data._body);
      console.log(_res);
    });
    setTimeout(()=>{console.log(_res)}, 3000,);
    return arr;
  }

  private handleError(error: Response) {
    return Observable.throw(error);
  }
}
