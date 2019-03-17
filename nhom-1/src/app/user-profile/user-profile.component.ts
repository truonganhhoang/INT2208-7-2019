import { Component, OnInit, Inject, ViewChild } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Router } from '@angular/router';
import { MatDialog, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material';

import { UserService } from '@app/_services';
import { User } from '@app/_models';
import { ReadVarExpr } from '@angular/compiler';
import { supportsWebAnimations } from '@angular/animations/browser/src/render/web_animations/web_animations_driver';

@Component({
    selector: 'app-user-profile',
    templateUrl: './user-profile.component.html',
    styleUrls: ['./user-profile.component.css']
})
export class UserProfileComponent implements OnInit {

    file: any;
    user: User;
    isMyProfile: boolean;
    default: string;
    sideNavButton: [];

    constructor(
        private router: Router,
        private userService: UserService,
        private dialog: MatDialog
    ) {
        this.user = new User;
        this.isMyProfile = false;
        this.default = "https://material.angular.io/assets/img/examples/shiba1.jpg";
    }


    ngOnInit() {
        var username = this.router.url.substring(1);
        if (this.userService.currentUserValue)
            this.isMyProfile = (username == this.userService.currentUserValue.username);
        this.userService.checkvalid(username)
            .subscribe(
                data => {
                    if (data.valid) {
                        this.router.navigate(['notfound'])
                    }
                }
            );
        this.userService.get(username)
            .subscribe(
                data => {
                    this.user = data.user;
                    console.log(this.user);
                }
            )
    }

    editProfileDialog(): void {
        const editProfileDialogRef = this.dialog.open(EditProfileDialog, {
            data: this.user
        });

        editProfileDialogRef.afterClosed().subscribe(result => {
            console.log(result);
        });
    }

    updateAvatarDialog(): void {
        const updateAvatarDialogRef = this.dialog.open(UpdateAvatarDialog, {
            data: this.default
        });

        updateAvatarDialogRef.afterClosed().subscribe(result => {
            console.log(result);
        });
    }
}

@Component({
    selector: 'edit-profile-dialog',
    templateUrl: 'edit-profile-dialog.html',
})
export class EditProfileDialog {

    constructor(
        public dialogRef: MatDialogRef<EditProfileDialog>,
        @Inject(MAT_DIALOG_DATA) public data: User
    ) {
        console.log(data.username)
    }

    onNoClick(): void {
        this.dialogRef.close();
    }
}

@Component({
    selector: 'update-avatar-dialog',
    templateUrl: 'update-avatar-dialog.html',
})
export class UpdateAvatarDialog {
    previewUrl: string;
    @ViewChild('fileInput') fileInput: any;
    file: any;

    constructor(
        private httpClient: HttpClient,
        public dialogRef: MatDialogRef<UpdateAvatarDialog>,
        @Inject(MAT_DIALOG_DATA) public data: string
    ) {
        this.previewUrl = data;
        console.log(data);
    }

    onUpload($event: any) {
        this.file = $event.target.files[0];
        this.previewUrl = URL.createObjectURL(this.file);
    }

    submit() {
        let fileData = new FormData();
        fileData.append('avatar', this.file);
        this.httpClient.post('http://localhost:3000/api/avatarupload', fileData).subscribe((value) => console.log(value));
        console.log('uploading');
        this.dialogRef.close();
    }

    browse() {
        this.fileInput.nativeElement.click();
    }

    onNoClick(): void {
        this.dialogRef.close();
    }
}
