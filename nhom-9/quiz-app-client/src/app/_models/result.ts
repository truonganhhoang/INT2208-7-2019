export class Result {
    questionContent: string;
    yourAnswer: string;
    trueAnswer: string;
    accuracy: boolean;
    constructor(
        questionContent: string,
        yourAnswer: string,
        trueAnswer: string) {
        this.questionContent = questionContent;
        this.yourAnswer = yourAnswer;
        this.trueAnswer = trueAnswer;
        this.accuracy = (yourAnswer === trueAnswer);
    }
}

