require('dotenv').config();
const gen = require('./generate-room-chat');
const mongoose = require('mongoose');

module.exports = function(io) {
    io.on('connection',(socket)=>{
        console.log('connected');
        socket.on('join chat room',(data)=>{
            let room = gen(data.user1,data.user2);
            socket.join(room);
            console.log('Joined room: ',room);

            socket.on('new message',(data)=>{
                console.log('receive message: ',data.content);
                socket.to(room).emit('new message', data);
            });
            socket.on('disconnect',()=>{
                socket.leave(room);
                console.log('leaved');
            });


            socket.on('add message',(data)=>{
                saveMessageToDataBase(data);
            });
        });
    });
};


function saveMessageToDataBase(data) {
    
}