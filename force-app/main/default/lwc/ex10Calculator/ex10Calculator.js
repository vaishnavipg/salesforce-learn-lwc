import { LightningElement } from 'lwc';

import { add, subtract, multiply, divide } 
from 'c/ex10CalculatorService';

export default class ex10Calculator extends LightningElement {

    num1;
    num2;
    result;

    handleFirst(event) {
        this.num1 = event.target.value;
    }

    handleSecond(event) {
        this.num2 = event.target.value;
    }

    handleAdd() {
        this.result = add(this.num1, this.num2);
    }

    handleSubtract() {
        this.result = subtract(this.num1, this.num2);
    }

    handleMultiply() {
        this.result = multiply(this.num1, this.num2);
    }

    handleDivide() {
        this.result = divide(this.num1, this.num2);
    }
}