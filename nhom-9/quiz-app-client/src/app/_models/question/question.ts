export class Question {
    questionNumber: number;
    questionContent: string;
    optionA: string;
    optionB: string;
    optionC: string;
    optionD: string;
    constructor(
        questionNumber: number,
        questionContent: string,
        optionA: string,
        optionB: string,
        optionC: string,
        optionD: string
    ) {
        this.questionNumber = questionNumber;
        this.questionContent = questionContent;
        this.optionA = optionA;
        this.optionB = optionB;
        this.optionC = optionC;
        this.optionD = optionD;
    }
}
