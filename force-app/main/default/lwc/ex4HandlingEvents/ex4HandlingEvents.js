import { LightningElement } from 'lwc';

export default class Ex4HandlingEvents extends LightningElement {
    msg = 'Hello from JS';
    handleClick(){
        this.msg = 'Button Clicked';
    }
}