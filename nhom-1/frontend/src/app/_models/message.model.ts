export class Message {
    sender: String;
    receiver: String;
    content: String;
    sendDate: Date

    constructor(data) {
        this.sender = data.sender;
        this.receiver = data.receiver;
        this.content = data.content;
        this.sendDate = data.sendDate;
    }
}