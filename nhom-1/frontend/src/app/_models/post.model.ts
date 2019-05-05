import { Comment } from './comment.model';

export class Post {
    postId: String = '';
    likes: String[] = [];
    author: String = '';
    comments: Comment[];
    sendDate: Date;
    lastInteract: Date;
    content: String = '';

    constructor(resPost) {
        if (resPost) {
            this.postId = resPost._id;
            this.author = resPost.author;
            this.lastInteract = new Date(resPost.lastInteract);
            this.likes = resPost.likes;
            this.content = resPost.content;
            this.sendDate = new Date(resPost.sendDate);
            this.comments = [];
            for (let i = 0; i < resPost.comments.length; i++) {
                let newComment = new Comment();
                newComment.author = resPost.comments[i].sender;
                newComment.content = resPost.comments[i].content;
                newComment.postId = resPost._id;
                newComment.sendDate = new Date(resPost.comments[i].sendDate);
                newComment.commentId = resPost.comments[i]._id;
                this.comments.push(newComment);
            }
        }
    }

}