import { LandingPageComponent } from './landing-page/landing-page.component';
import { TestingComponent } from './testing/testing.component';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
import { AuthGuard } from './_guards/auth.guard';
import { DashboardComponent } from './dashboard/dashboard.component';
import { LoggedGuard } from './_guards/logged.guard';
import { QuizDetailComponent } from './quiz-detail/quiz-detail.component';
import { ConfirmTestGuard } from './_guards/confirm-test.guard';

const appRoutes: Routes = [
    {
        path: '', component: DashboardComponent, canActivate: [AuthGuard],
        children: [
            { path: 'quiz-detail', component: QuizDetailComponent },
            { path: 'testing/:id', component: TestingComponent, canActivate: [ConfirmTestGuard] },
            { path: '', redirectTo: 'quiz-detail', pathMatch: 'full', canActivate: [AuthGuard] },
        ]
    },
    { path: 'login', component: LoginComponent, canActivate: [LoggedGuard] },
    { path: 'register', component: RegisterComponent },
    { path: '**', redirectTo: '' },
    { path: 'about', component: LandingPageComponent }
];

export const routing = RouterModule.forRoot(appRoutes);