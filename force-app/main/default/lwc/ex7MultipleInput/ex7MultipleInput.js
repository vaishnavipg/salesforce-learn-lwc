import { LightningElement } from 'lwc';

export default class Ex7MultipleInput extends LightningElement {
    firstName = '';
    lastName = '';

    handleChange(event){
        // in efficient solution
        if(event.target.label == 'Enter your first name'){
          this.firstName = event.target.value;  
        }

        if(event.target.label == 'Enter your last name'){
            this.lastName = event.target.value;
        }
    }

}