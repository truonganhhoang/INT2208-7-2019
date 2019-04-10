import { Relation } from './relation';

export class User {
    id: number;
    username: string;
    password: string;
    name: string;
    gender: boolean;
    birthday: Date;
    token: string;
    avatarUrl: string;
    friends: Array<Relation>;
}
