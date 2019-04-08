import { Routes, RouterModule } from '@angular/router';

import { DashboardTestComponent } from './dashboard-test/dashboard-test.component';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';

import { AuthGuard } from './_guards/auth.guard';
// import { AuthGuard } from './_guards';

const appRoutes: Routes = [
    { path: '', component: DashboardTestComponent, canActivate: [AuthGuard] },
    { path: 'login', component: LoginComponent },
    { path: 'register', component: RegisterComponent },

    // otherwise redirect to home
    { path: '**', redirectTo: '' }
];

export const routing = RouterModule.forRoot(appRoutes);