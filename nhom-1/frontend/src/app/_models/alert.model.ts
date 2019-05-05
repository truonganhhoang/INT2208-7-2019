export class Alert {
    type: String = '';
    payload = {sender: '', author: ''};
    date: Date = new Date();


    constructor(res = null) {
        if (res) {
            this.type = res.type;
            this.date = new Date(res.date);
            this.payload = res.payload;
        }
    }
}