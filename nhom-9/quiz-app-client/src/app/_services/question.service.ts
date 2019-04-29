import { Question } from './../_models/question/question';
import { Questions } from './../_models/question/mock-question';
import { Injectable } from '@angular/core';
import { Http, Headers } from '@angular/http';
import { Observable } from 'rxjs';

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
  getUrl = 'http://localhost:3000/api/test';
  constructor(private http: Http) { }
  getTest(id: number): Observable<Question[]> {
    const questionArray: Question[] = [];
    const url = `${this.getUrl}/${id}`;
    const res = this.http.get(url).catch(this.handleError);
    res.subscribe(data => {
      const JSONarray = JSON.parse(data._body);
      JSONarray.forEach((element: { questionContent: string; optionA: string; optionB: string; optionC: string; optionD: string; }) => {
        questionArray.push(new Question(element.questionContent, element.optionA, element.optionB, element.optionC, element.optionD));
      });
    });
    return Observable.of(questionArray);
  }

  private handleError(error: Response) {
    return Observable.throw(error);
  }
}
