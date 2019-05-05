import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { ReactiveFormsModule }    from '@angular/forms';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatRadioModule } from '@angular/material/radio';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatGridListModule } from '@angular/material/grid-list';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatSidenavModule } from '@angular/material/sidenav';
import { MatListModule } from '@angular/material/list';
import { MatTabsModule } from '@angular/material/tabs';
import { MatIconModule } from '@angular/material/icon';
import { MatDialogModule } from '@angular/material/dialog';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { MatNativeDateModule, MatInputModule, MatProgressBarModule, MatBadgeModule, MatMenuModule } from '@angular/material';
import { FormsModule } from '@angular/forms';

import { AppComponent }  from './app.component';
import { routing }        from './app.routing';

import { AlertComponent } from './_components';
import { JwtInterceptor } from './_helpers';
import { HomeComponent } from './home';
import { LoginComponent } from './login';
import { RegisterComponent } from './register';
import { MessengerComponent } from './messenger/messenger.component';
import { MessageComponent } from './message/message.component';
import { UserProfileComponent, EditProfileDialog, UpdateAvatarDialog } from './user-profile/user-profile.component';
import { NotFoundComponent } from './not-found/not-found.component';;
import { ChatboxComponent } from './chatbox/chatbox.component';
import { ChatlistComponent } from './chatlist/chatlist.component';
import { ChatlistItemComponent } from './chatlist-item/chatlist-item.component';
import { UserService } from './_services/user.service';
import { AlertService } from './_services/alert.service';
import { MessageService } from './_services/message.service';

import {
    MqttModule
  } from 'ngx-mqtt';;
import { PostComponent } from './post/post.component';
import { SideAlertComponent } from './side-alert/side-alert.component';
import { SideAlertService } from './_services/sideAlert.service';
import { CommentComponent } from './comment/comment.component';

import { NotifyItemComponent } from './notify-item/notify-item.component';

@NgModule({
    imports: [
        BrowserModule,
        ReactiveFormsModule,
        HttpClientModule,
        routing,
        BrowserAnimationsModule,
        MatRadioModule,
        MatDatepickerModule,
        MatButtonModule,
        MatCardModule,
        MatGridListModule,
        MatToolbarModule,
        MatSidenavModule,
        MatListModule,
        MatTabsModule,
        MatIconModule,
        MatDialogModule,
        MatCheckboxModule,
        MatNativeDateModule, 
        MatInputModule,
        FormsModule,
        MatProgressBarModule,
        MatBadgeModule,
        MatMenuModule,
        MqttModule.forRoot({
            hostname: 'localhost',
            port: 9001,
            path:''
        })
    ],
    declarations: [
        AppComponent,
        AlertComponent,
        HomeComponent,
        LoginComponent,
        RegisterComponent,
        MessengerComponent,
        MessageComponent,
        UserProfileComponent, EditProfileDialog, UpdateAvatarDialog,
        NotFoundComponent ,
        ChatlistComponent,
        ChatboxComponent,
        ChatlistItemComponent,
        PostComponent ,
        SideAlertComponent ,
        CommentComponent,
        NotifyItemComponent
    ],
    entryComponents: [
        EditProfileDialog, UpdateAvatarDialog,
    ],
    providers: [
        { provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true },
        UserService,
        AlertService,
        MessageService,
        SideAlertService
    ],
    bootstrap: [AppComponent]
})

export class AppModule { }
