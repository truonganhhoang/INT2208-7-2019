import { QuestionService } from './_services/question.service';
import { WelcomeComponent } from './welcome/welcome.component';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';

import { AuthGuard } from './_guards/auth.guard';
import { LoggedGuard } from './_guards/logged.guard';
import { ConfirmTestGuard } from './_guards/confirm-test.guard';
import { AuthenticationService, UserService, AlertService } from './_services';
// import { fakeBackendProvider , ErrorInterceptor, JwtInterceptor } from './_helpers/index';

import { AppComponent } from './app.component';
import { AlertComponent } from './_directives/index';
import { UserDetailComponent } from './dashboard/user-detail/user-detail.component';
import { LandingPageComponent } from './landing-page/landing-page.component';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
import { routing } from './app.routing';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { DashboardComponent } from './dashboard/dashboard.component';
import { QuizDetailComponent } from './quiz-detail/quiz-detail.component';
import { TestingComponent } from './testing/testing.component';
import { ResultComponent } from './result/result.component';
import { UserEditComponent } from './user-edit/user-edit.component';

@NgModule({
  declarations: [
    AppComponent,
    AlertComponent,
    UserDetailComponent,
    LandingPageComponent,
    LoginComponent,
    RegisterComponent,
    DashboardComponent,
    QuizDetailComponent,
    WelcomeComponent,
    TestingComponent,
    ResultComponent,
    UserEditComponent
  ],
  imports: [
    BrowserModule,
    HttpModule,
    HttpClientModule,
    ReactiveFormsModule,
    FormsModule,
    routing
  ],
  providers: [
    AuthGuard,
    LoggedGuard,
    ConfirmTestGuard,
    AuthenticationService,
    UserService,
    AlertService,
    // { provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true },
    // { provide: HTTP_INTERCEPTORS, useClass: ErrorInterceptor, multi: true },
    // fakeBackendProvider,
    QuestionService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
