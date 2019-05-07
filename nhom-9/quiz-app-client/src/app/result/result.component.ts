import { AuthenticationService } from './../_services/authentication.service';
import { UserService } from './../_services/user.service';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Result } from '../_models/result';

@Component({
  selector: 'app-result',
  templateUrl: './result.component.html',
  styleUrls: ['./result.component.css']
})
export class ResultComponent implements OnInit {
  quizId: number;
  results: Result[] = [];
  constructor(private userService: UserService,
    private route: ActivatedRoute) { }

  ngOnInit() {
    this.quizId = parseInt(this.route.snapshot.paramMap.get('id'), 10);
    this.userService.getSubmitDetail(1).subscribe(data => {
      const JsonData = JSON.parse(data._body);
      JsonData.forEach(element => {
        this.results.push(new Result(element.questionContent, element.studentAnswer, element.trueAnswer));
      });
    });
  }
  getAccuracy(accuracy: boolean) {
    return (accuracy) ? 'True' : 'False';
  }
}
