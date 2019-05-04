import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { first } from 'rxjs/operators';

import { AlertService, UserService } from '../_services';
import { User } from '../_models';

@Component({
    selector: 'app-user-edit',
    templateUrl: './user-edit.component.html',
    styleUrls: ['./user-edit.component.css']
})
export class UserEditComponent implements OnInit {

    userinfo: any;
    firstname: string;
    lastname: string;
    username: string;
    email: string;
    birthday: string;
    school: string;

    updateForm: FormGroup;
    loading = false;
    submitted = false;

    constructor(
        private formBuilder: FormBuilder,
        private router: Router,
        private userService: UserService,
        private alertService: AlertService) { }

    ngOnInit() {
        this.userinfo = JSON.parse(localStorage.getItem('userinfo'));
        this.firstname = this.userinfo[0].firstName;
        this.lastname = this.userinfo[0].lastName;
        this.username = this.userinfo[0].username;
        // console.log(this.userinfo[0]);
        this.email = this.userinfo[0].email;
        this.birthday = this.userinfo[0].birthday;
        this.school = this.userinfo[0].school;

        this.updateForm = this.formBuilder.group({
            firstName: [''],
            lastName: [''],
            username: [''],
            password: ['', Validators.minLength(6)],
            confirmPassword: [''],
            email: [''],
            birthday: [''],
            gender: [''],
            role: [''],
            school: ['']

        });
    }

    // convenience getter for easy access to form fields
    get f() { return this.updateForm.controls; }

    onSubmit() {
        this.submitted = true;
        // stop here if form is invalid
        if (this.updateForm.invalid) {
            return;
        }
        this.loading = true;
        this.userService.register(this.updateForm.value)
            .pipe(first())
            .subscribe(
                data => {
                    this.alertService.success('Registration successful', true);
                    // this.router.navigate(['/login']);
                },
                error => {
                    this.alertService.error(error);
                    this.loading = false;
                });
    }

}
