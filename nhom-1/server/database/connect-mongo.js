require('dotenv').config();

function sleep(milliseconds) {
    var start = new Date().getTime();
    while (true) {
      if ((new Date().getTime() - start) > milliseconds) {
        break;
      }
    }
}

var tryConnect = function(mongoose) {
    if (mongoose.connection.readyState===0) {
        mongoose.connect(process.env.URL_MONGODB,{useNewUrlParser:true});
    } else return true;
    for (var i=0;i<10;i++) {
        if (mongoose.connection.readyState===1) return true;
        sleep(500);
        mongoose.connect(process.env.URL_MONGODB,{useNewUrlParser:true});
    }
    return false;
}

module.exports = tryConnect;