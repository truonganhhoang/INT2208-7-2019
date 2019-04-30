export class Question {
    private questionContent: string;
    private optionA: string;
    private optionB: string;
    private optionC: string;
    private optionD: string;
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
    getQuestionContent(): string {
        return this.questionContent;
    }
    getOptionA(): string {
        return this.optionA;
    }
    getOptionB(): string {
        return this.optionB;
    }
    getOptionC(): string {
        return this.optionC;
    }
    getOptionD(): string {
        return this.optionD;
    }
}
