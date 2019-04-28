export class Question {
    constructor(
        questionContent: string,
        optionA: string,
        optionB: string,
        optionC: string,
        optionD: string
    ) {
        this.questionContent = questionContent;
        this.optionA = optionA;
        this.optionB = optionB;
        this.optionC = optionC;
        this.optionD = optionD;
    }
    questionContent: string;
    optionA: string;
    optionB: string;
    optionC: string;
    optionD: string;
}
