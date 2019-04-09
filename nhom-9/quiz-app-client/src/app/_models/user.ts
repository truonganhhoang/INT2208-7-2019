export class User {
    id: number;
    username: string;
    password: string;
    firstName: string;
    lastName: string;

    constructor(id: number,
        username: string,
        password: string,
        firstName: string,
        lastName: string) {
            this.id = id;
            this.username = username;
            this.password = password;
            this.firstName = firstName;
            this.lastName = lastName;
        }
}