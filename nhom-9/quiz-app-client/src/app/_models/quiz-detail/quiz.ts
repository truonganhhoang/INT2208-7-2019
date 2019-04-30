export class Quiz {
    private quizNumber: number;
    private language: string;
    private catalogy: string;
    private questionQuantity: number;
    private lastestSubmit;
    constructor(quizNumber: number, language: string, catalogy: string, questionQuantity: number) {
     this.quizNumber = quizNumber;
     this.language = language;
     this.catalogy = catalogy;
     this.questionQuantity = questionQuantity;
}
}
