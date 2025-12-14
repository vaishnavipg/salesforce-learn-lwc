import { LightningElement } from 'lwc';

export default class Ex6HandleUserInput extends LightningElement {
    changeName = '';
    inputName = '';

    handleChange(event) {
        this.changeName = event.target.value;
    }

    handleInput(event) {
        this.inputName = event.target.value;
    }

}