import { Message } from "./message.model";

export class ChatRoom {
    roomId: String;
    read: Boolean;
    sender: String;
    lastMessage: Date;
    thread: String;
}