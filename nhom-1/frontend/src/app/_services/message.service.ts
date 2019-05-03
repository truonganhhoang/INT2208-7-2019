import { Subject } from 'rxjs';
import { Injectable } from '@angular/core';
import {environment} from '@environments/environment'
import { UserService } from './user.service';
import { Message } from '@app/_models/message.model';
import { MqttService, IMqttMessage } from 'ngx-mqtt';

@Injectable()
export class MessageService {
    private messageStream: any;
    private selectedRoom: any;

    constructor(
        private userSerivce: UserService,
        private mqttService: MqttService,
        ) {

        this.messageStream = new Subject<Message>();
        this.selectedRoom = new Subject<String>();
        let username = this.userSerivce.currentUserValue.username;
        console.log(username);
        this.mqttService.observe(username).subscribe((mess: IMqttMessage)=>{
            console.log(mess.payload);
            console.log(JSON.parse(mess.payload.toString()));
            // let payload = Object();
            // payload.sendDate = 'fsfsa';
            // payload.gnar = 'fsfa';
            // console.log(JSON.parse(payload.toString()));
            // let payloadObj = mess.payload.toString();
            // let payloadMessage = new Message();
            // payloadMessage.roomId = payloadObj.roomId;
            // payloadMessage.content = payloadObj.content;
            // payloadMessage.sender = payloadObj.sender;
            // payloadMessage.sendDate = payloadObj.sendDate;
            // this.messageStream.next(payloadMessage);
        });
    }

    updateSelectedRoom(roomId: String) {
        this.selectedRoom.next(roomId);
    }

    getSelectedRoomStream() {
        return this.selectedRoom;
    }

    getMessageStream() {
        return this.messageStream;
    }

    sendMessage(topic, message: Message) {
        console.log(topic);
        console.log(message);
        console.log(message.toString());
        this.mqttService.unsafePublish(topic, JSON.stringify(message));
    }
}