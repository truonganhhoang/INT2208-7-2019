import { Injectable } from "@angular/core";
import { Subject } from 'rxjs';
import { Alert } from '@app/_models/alert.model';
import { MqttService, IMqttMessage } from 'ngx-mqtt';
import { UserService } from './user.service';


@Injectable()
export class SideAlertService {

    private alertStream: Subject<Alert> = new Subject<Alert>();;

    constructor(
        private mqttClient: MqttService,
        private userService: UserService
    ) {
        this.userService.currentUser.subscribe(x => {
            if (x!=null) {
                let username = x.username;
                this.mqttClient.observe('notify/' + username).subscribe((mess: IMqttMessage)=>{
                let payloadObj = JSON.parse(mess.payload.toString());
                let alert = new Alert(payloadObj);
                this.alertStream.next(alert);
            });
            }
        })
    }

    getAlertStream() {
        return this.alertStream;
    }

}