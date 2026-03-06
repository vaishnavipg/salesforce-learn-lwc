import { LightningElement, wire } from 'lwc';
import getAccounts from '@salesforce/apex/ex11AccountController.getAccounts';

const columns = [
    { label: 'Account Name', fieldName: 'Name' },
    { label: 'Industry', fieldName: 'Industry' },
    { label: 'Phone', fieldName: 'Phone', type: 'phone' }
];

export default class ex11AccountDataTable extends LightningElement {

    columns = columns;
    accounts;

    @wire(getAccounts)
    wiredAccounts({ error, data }) {
        if (data) {
            this.accounts = data;
        } else if (error) {
            console.error(error);
        }
    }
}