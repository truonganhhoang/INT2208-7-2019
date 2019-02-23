const gen = require('./generate-room');

module.exports = function(server) {
    const io = require('socket.io')(server);
    io.on('connection',(socket)=>{
        console.log('connected');
        socket.on('login',(data)=>{
            socket.join('ROOM1');
            console.log(data);
            console.log(' joined room');
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