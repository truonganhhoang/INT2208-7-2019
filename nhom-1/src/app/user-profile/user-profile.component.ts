import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Component({
  selector: 'app-user-profile',
  templateUrl: './user-profile.component.html',
  styleUrls: ['./user-profile.component.css']
})
export class UserProfileComponent implements OnInit {

  constructor(private httpClient: HttpClient) { }

  file : any;

  ngOnInit() {
  }

  onUpload($event: any,image:any) {
    this.file=$event.target.files[0];
  }

  uploadFile() {
    let fileData = new FormData();
    fileData.append('avatar',this.file);
    this.httpClient.post('http://localhost:3000/api/imageUpload',fileData).subscribe((value)=>console.log(value));
    console.log('uploading');
  }

}
