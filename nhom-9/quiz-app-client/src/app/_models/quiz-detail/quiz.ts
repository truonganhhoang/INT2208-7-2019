export class Quiz {
    private quizNumber: number;
    private language: string;
    private catalogy: string;
    private questionQuantity: number;
    private isCompleted: boolean;
    constructor(quizNumber: number, language: string, catalogy: string, questionQuantity: number, isCompleted: boolean) {
     this.quizNumber = quizNumber;
     this.language = language;
     this.catalogy = catalogy;
     this.questionQuantity = questionQuantity;
     this.isCompleted = isCompleted;
}
}
