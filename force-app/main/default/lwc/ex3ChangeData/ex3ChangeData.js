import { LightningElement } from 'lwc';

export default class Ex3ChangeData extends LightningElement {
    msg = 'Hello from JS';

    connectedCallback() {
        debugger;
        this.msg = 'Hello from JS - connectedCallback';
    }

}