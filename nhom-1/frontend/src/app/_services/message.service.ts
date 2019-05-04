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
        this.mqttService.observe('messenger/'+username).subscribe((mess: IMqttMessage)=>{
            let payloadObj = JSON.parse(mess.payload.toString());
            let payloadMessage = new Message();
            payloadMessage.roomId = payloadObj.roomId;
            payloadMessage.content = payloadObj.content;
            payloadMessage.sender = payloadObj.sender;
            payloadMessage.sendDate = new Date(payloadObj.sendDate);
            this.messageStream.next(payloadMessage);
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
        this.mqttService.unsafePublish(topic, JSON.stringify(message),{qos:2});
    }
}