import { Subject } from 'rxjs';
import { Injectable } from '@angular/core';
import * as mqtt from 'mqtt';
import {environment} from '@environments/environment'
import { UserService } from './user.service';
import { Message } from '@app/_models/message.model';

@Injectable()
export class MessageService {
    private messageStream: any;

    constructor(userSerivce: UserService) {
        this.messageStream = new Subject<Message>();
        let username = userSerivce.currentUserValue.username;
        let client = mqtt.connect(environment.mqttUrl, {clientId: username+Date.now()});
        client.subscribe(username, (err)=>{console.log(err)});

        client.on('message', (topic, payload)=>{
            let payloadObj = JSON.parse(payload.toString());
            let payloadMessage = new Message();
            payloadMessage.roomId = payloadObj.roomId;
            payloadMessage.content = payloadObj.content;
            payloadMessage.sender = payloadObj.sender;
            payloadMessage.sendDate = payloadObj.sendDate;
            this.messageStream.next(payloadMessage);
        });
    }

    getMessageStream() {
        return this.messageStream;
    }
}