import { LightningElement } from 'lwc';

export default class Ex8MultipleInputValidSolution extends LightningElement {
    firstName;
    lastName;

    
    handleChange(event) {
        this[event.target.name] = event.target.value;
    }
}