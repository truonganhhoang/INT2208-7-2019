import { Question } from './../_models/question/question';
import { Questions } from './../_models/question/mock-question';
import { Injectable } from '@angular/core';
import { Http, Headers } from '@angular/http';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { element } from 'protractor';

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
  getUrl = 'http://localhost:3000/api/test'
  constructor(private http: Http) { }
  getTest(id: number): Question[] {
    var questionArray: Question[] = [];
    var url = `${this.getUrl}/${id}`;
    let res = this.http.get(url).catch(this.handleError);
    res.subscribe(data => {
      var JSONarray = JSON.parse(data._body);
      JSONarray.forEach(element => {
        questionArray.push(new Question(element.questionContent, element.optionA, element.optionB, element.optionC, element.optionD))
      });
    });
    //setTimeout(()=>{console.log(questionArray)}, 3000);
    return questionArray;
  }

  private handleError(error: Response) {
    return Observable.throw(error);
  }
}
