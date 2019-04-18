require('dotenv').config();
const mongoose = require('mongoose');
const messengerRoom = require('./../model/messenger-room.model');
const messageThread = require('./../model/thread-message.model');
const messageSchema = require('./../model/message.model');

const MessengerRoom = mongoose.model('MessengerRoom', messengerRoom);
const MessengerThread = mongoose.model('MessengerThread', messageThread);
const Message = mongoose.model('Message', messageSchema);

function saveMessageToDatabase(topic,payload) {
    payload = JSON.parse(payload);
    let userReceiver = topic;
    let roomChatId = payload.roomId;
    let userSender = payload.sender;
    
    MessengerRoom.findById(roomChatId ,(err,docRoom)=>{
        if (err) {
            //do nothing
            console.log('err in find room');
            return;
        }
        if (!docRoom) {
            //do nothing
            console.log('there is no room to save in mqtt');
            return;
        }
        //find thread
        MessengerThread.findById(doc.thread, (err,docThread)=>{
            if (err) {
                console.log('err in find message thread mqtt');
                return;
            }
            if (!docThread) {
                console.log('no thread message find in mqtt');
                return;
            }
            let newMessage = new Message();
            newMessage.sender = userSender;
            newMessage.receiver = userReceiver;
            newMessage.content = payload.content;
            if (docThread.messages.length > 25) {
                // create new thread messages
                let newThread = new MessengerThread();
                newThread.previous = docThread._id;
                newThread.messages.push(newMessage);
                //save new thread
                docThread.save((err, doc)=>{
                    if (err) {
                        console.log('error in create new messages, save in new thread');
                    }
                    //save room
                    docRoom.thread = doc._id;
                    docRoom.save((err)=>{
                        if (err) {
                            console.log('err in save room in mqtt');
                        }
                    });
                });
            } else {
                docThread.messages.push(newMessage);
                docThread.save((err, doc)=>{
                    if (err) {
                        console.log('error in save thread message');
                    }
                });
            }
        });
    });
}

module.exports = function() {
    const mqtt = require('mqtt');
    const server = mqtt.connect(process.env.MQTT_URL,{clean:false, clientId: process.env.MQTT_SERVER_CLIENTID});

    server.subscribe('#', {qos:2}, (err)=>{if (err) console.log(err)});

    server.on('message', (topic, payload)=>{
        saveMessageToDatabase(topic, payload);
    });
}
