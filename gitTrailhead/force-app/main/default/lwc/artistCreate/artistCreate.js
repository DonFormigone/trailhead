import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import ARTIST_OBJECT from '@salesforce/schema/Artist__c';
import NAME_FIELD from '@salesforce/schema/Artist__c.Name';
import COUNTRY_FIELD from '@salesforce/schema/Artist__c.Country__c';
import GENRE_FIELD from '@salesforce/schema/Artist__c.Genre__c';
import PICTURE_FIELD from '@salesforce/schema/Artist__c.Picture__c';

export default class ArtistCreate extends LightningElement {
    objectApiName = ARTIST_OBJECT;
    fields = [NAME_FIELD, GENRE_FIELD, COUNTRY_FIELD, PICTURE_FIELD];
    handleSuccess(event) {
        const toastEvent = new ShowToastEvent({
            title: "Artist created",
            message: "Record ID: " + event.detail.id,
            variant: "success"
        });
        this.dispatchEvent(toastEvent);
    }
}