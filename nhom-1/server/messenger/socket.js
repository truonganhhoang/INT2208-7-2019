const gen = require('./generate-room');

module.exports = function(server) {
    const io = require('socket.io')(server);
    io.on('connection',(socket)=>{
        console.log('connected');
        socket.on('login',(data)=>{
            let room = gen(data.user1,data.user2);
            socket.join(room);
            console.log('Joined room ',room);
        });
        socket.on('add message',(data)=>{
            socket.to('ROOM1').emit('new message',data);
        })
        socket.on('disconnect',()=>{
            socket.leave('ROOM1');
            console.log('leave');
        });
    });
}