import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Router } from '@angular/router'
import { UserService } from '@app/_services'

@Component({
  selector: 'app-user-profile',
  templateUrl: './user-profile.component.html',
  styleUrls: ['./user-profile.component.css']
})
export class UserProfileComponent implements OnInit {

    file: any;
    username: string;

    constructor(
        private httpClient: HttpClient,
        private router: Router,
        private userService: UserService
    ) {
        this.username = this.router.url.substring(1);
        this.userService.checkvalid(this.username)
            .subscribe(
                data => {
                    if (data.valid) {
                        this.router.navigate([''])
                    }
                }
            );
    }


    ngOnInit() {
    }

    onUpload($event: any) {
        this.file=$event.target.files[0];
    }

    uploadFile() {
        let fileData = new FormData();
        fileData.append('avatar',this.file);
        this.httpClient.post('http://localhost:3000/api/imageUpload',fileData).subscribe((value)=>console.log(value));
        console.log('uploading');
    }
}
