import { Component, OnInit } from '@angular/core';
import { UserService } from '@app/_services/user.service';
import { ActivatedRoute } from '@angular/router';
import { User } from '@app/_models';

@Component({
    selector: 'app-search',
    templateUrl: './search.component.html',
    styleUrls: ['./search.component.css']
})
export class SearchComponent implements OnInit {
    results: Array<any>;

    constructor(
        private route: ActivatedRoute,
        private userService: UserService,
    ) { }

    ngOnInit() {
        this.route.params.subscribe(param => {
            var keyword = param['keyword'];
            this.userService.search(keyword)
                .subscribe(
                    data => {
                        this.results = data.results;
                        console.log(this.results);
                    }
                );
        });
    }

}
