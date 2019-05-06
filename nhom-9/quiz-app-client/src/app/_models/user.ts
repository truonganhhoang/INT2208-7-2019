export class User {
    firstName: string;
    lastName: string;
    username: string;
    password: string;
    email: string;
    birthday: string;
    gender: string;
    role: string;
    school: string;
    id: number;
    avatarLink: string;

    constructor(
        firstName: string,
        lastName: string,
        username: string,
        password: string,
        email: string,
        birthday: string,
        gender: string,
        role: string,
        school: string,
        id: number,
        avatarLink: string) {
            this.firstName = firstName;
            this.lastName = lastName;
            this.username = username;
            this.password = password;
            this.email = email;
            this.birthday = birthday;
            this.gender = gender;
            this.role = role;
            this.school = school;
            this.id = id;
            this.avatarLink = avatarLink;
    }
}