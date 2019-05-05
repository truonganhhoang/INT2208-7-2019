import { Routes, RouterModule } from '@angular/router';

import { HomeComponent } from './home';
import { LoginComponent } from './login';
import { RegisterComponent } from './register';
import { AuthGuard } from './_guards';
import { MessengerComponent } from './messenger/messenger.component';
import { UserProfileComponent } from './user-profile/user-profile.component';
import { NotFoundComponent } from './not-found/not-found.component';
import { SearchComponent } from './search/search.component';

const appRoutes: Routes = [
    { path: '', component: HomeComponent, canActivate: [AuthGuard] },
    { path: 'login', component: LoginComponent },
    { path: 'register', component: RegisterComponent },
    { path: 'messenger', component: MessengerComponent, canActivate:[AuthGuard]},
    { path: 'notfound', component: NotFoundComponent },
    { path: 'users/:username',  component: UserProfileComponent },
    { path: 'search/:keyword', component: SearchComponent},
    { path: '**',  component: NotFoundComponent }
];

export const routing = RouterModule.forRoot(appRoutes);
