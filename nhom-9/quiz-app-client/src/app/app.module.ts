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
import { TestDisplayComponent } from './dashboard/test/test.component';
import { routing } from './app.routing';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
<<<<<<< HEAD
import { DetailComponent } from './dashboard/test/detail/detail.component';
import { DoQuizComponent } from './dashboard/test/do-quiz/do-quiz.component';
import { ClassComponent } from './dashboard/class/class.component';
import { DashboardComponent } from './dashboard/dashboard.component';
=======
import { QuizDetailComponent } from './quiz-detail/quiz-detail.component';
import { TestingComponent } from './testing/testing.component';
>>>>>>> 313ea513a2799896355a6b0cb0b8e28f1f2d3f45

@NgModule({
  declarations: [
    AppComponent,
    AlertComponent,
    UserDetailComponent,
    LandingPageComponent,
    LoginComponent,
    RegisterComponent,
<<<<<<< HEAD
    TestDisplayComponent,
    DetailComponent,
    DoQuizComponent,
    ClassComponent,
    DashboardComponent
=======
    DashboardTestComponent,
    QuizDetailComponent,
    WelcomeComponent,
    TestingComponent
>>>>>>> 313ea513a2799896355a6b0cb0b8e28f1f2d3f45
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
<<<<<<< HEAD
    // { provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true },
    // { provide: HTTP_INTERCEPTORS, useClass: ErrorInterceptor, multi: true },
    // fakeBackendProvider,
=======
    QuestionService
>>>>>>> 313ea513a2799896355a6b0cb0b8e28f1f2d3f45
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
