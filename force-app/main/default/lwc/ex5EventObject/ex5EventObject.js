import { LightningElement } from 'lwc';

export default class Ex5EventObject extends LightningElement {
    msg = 'Hello from JS';
    
    handleClick(event){
        this.msg = 'Button Clicked';
        console.log(event.target.label);
    }
}