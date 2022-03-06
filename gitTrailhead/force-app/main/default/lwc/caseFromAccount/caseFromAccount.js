import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import ACCOUNTID_FIELD from '@salesforce/schema/Account.Id';
import NAME from '@salesforce/schema/Account.Name';

export default class CaseFromAccount extends LightningElement {
    ACCOUNTID = ACCOUNTID_FIELD;
    ACCOUNT = ACCOUNT_OBJECT;
}