import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';


@Component({
  selector: 'app-messenger',
  templateUrl: './messenger.component.html',
  styleUrls: ['./messenger.component.css']
})
export class MessengerComponent implements OnInit {

  constructor(private route: ActivatedRoute) {

  }


  ngOnInit() {
    this.route.queryParams.subscribe(params=>{
      if (params.u) console.log('true');
      else console.log('false');
    });
  }
  
}
