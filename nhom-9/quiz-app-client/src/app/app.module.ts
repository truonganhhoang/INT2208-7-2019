import { WelcomeComponent } from './welcome/welcome.component';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';

import { AuthGuard } from './_guards/auth.guard';
import { AuthenticationService, UserService, AlertService } from './_services';

import { AppComponent } from './app.component';
import { UserDetailComponent } from './user-detail/user-detail.component';
import { LandingPageComponent } from './landing-page/landing-page.component';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
import { DashboardTestComponent } from './dashboard-test/dashboard-test.component';
import { routing } from './app.routing';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { QuizDetailComponent } from './quiz-detail/quiz-detail.component';
import { TestingComponent } from './testing/testing.component';

@NgModule({
  declarations: [
    AppComponent,
    UserDetailComponent,
    LandingPageComponent,
    LoginComponent,
    RegisterComponent,
    DashboardTestComponent,
    QuizDetailComponent,
    WelcomeComponent,
    TestingComponent
  ],
  imports: [
    BrowserModule,
    HttpModule,
    // RouterModule,
    ReactiveFormsModule,
    FormsModule,

    routing
  ],
  providers: [
    AuthGuard,
    AuthenticationService,
    UserService,
    AlertService,
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
