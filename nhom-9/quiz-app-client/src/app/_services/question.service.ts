import { Question } from './../_models/question/question';
import { Questions } from './../_models/question/mock-question';
import { Injectable } from '@angular/core';

@Injectable()
export class QuestionService {

  constructor() { }
  getTest(): Question[] {
    return Questions;
  }

}
