import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import OBJECT from '@salesforce/schema/Contact';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import CONTACT_NAME from '@salesforce/schema/Contact.Name';
import PHONE from '@salesforce/schema/Contact.Phone';

export default class ContactCreate extends LightningElement {
    objectApiName = OBJECT;
    fields = [CONTACT_NAME, EMAIL_FIELD, PHONE];
    handleSuccess(event){
        const toastEvent = new ShowToastEvent({
            title: "Contact created",
            message:"Record ID: " + event.detail.id,
            variant: "success"
        });
        this.dispatchEvent(toastEvent);
    }
}