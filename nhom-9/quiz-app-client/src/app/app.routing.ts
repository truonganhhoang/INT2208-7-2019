import { LandingPageComponent } from './landing-page/landing-page.component';
import { TestingComponent } from './testing/testing.component';
import { WelcomeComponent } from './welcome/welcome.component';
import { Routes, RouterModule } from '@angular/router';

import { TestDisplayComponent } from './dashboard/test/test.component';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';

import { AuthGuard } from './_guards/auth.guard';
import { DashboardComponent } from './dashboard/dashboard.component';
import { ClassComponent } from './dashboard/class/class.component';
import { DoQuizComponent } from './dashboard/test/do-quiz/do-quiz.component';
import { LoggedGuard } from './_guards/logged.guard';

const appRoutes: Routes = [
    { path: '', component: DashboardComponent, canActivate: [AuthGuard],
    children: [

        { path: 'classes', component: ClassComponent },
        { path: 'test', component: TestDisplayComponent },
        { path: 'doing', component: DoQuizComponent },
        
        { path: '', redirectTo: 'test', pathMatch: 'full', canActivate: [AuthGuard]},
        // { path: '**', redirectTo: '' },
        ]
    },
    { path: 'login', component: LoginComponent, canActivate: [LoggedGuard] },
    // { path: '', component: WelcomeComponent },
    // { path: 'login', component: LoginComponent },
    { path: 'register', component: RegisterComponent },
    { path: 'dashboard', component: DashboardComponent },
    { path: 'testing/:id', component: TestingComponent },
    { path: '**', redirectTo: '' },
    { path: 'about', component: LandingPageComponent}
];

export const routing = RouterModule.forRoot(appRoutes);