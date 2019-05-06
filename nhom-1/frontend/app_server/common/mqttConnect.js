const mqtt = require('mqtt');

const server = mqtt.connect(process.env.MQTT_URL,{clean:false, clientId: process.env.MQTT_SERVER_CLIENTID});

module.exports = server;