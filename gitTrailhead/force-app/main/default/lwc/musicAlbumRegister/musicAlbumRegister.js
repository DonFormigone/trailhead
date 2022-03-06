import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import ARTIST_OBJECT from '@salesforce/schema/Music__c';
import NAME_FIELD from '@salesforce/schema/Music__c.Name';
import ALBUM_FIELD from '@salesforce/schema/Music__c.Album__c';
import ARTIST_FIELD from '@salesforce/schema/Music__c.Artist__c';
import AGE_FIELD from '@salesforce/schema/Music__c.Age__c';

export default class MusicAlbumRegister extends LightningElement {
    objectApiName = ARTIST_OBJECT;
    fields =[NAME_FIELD, ALBUM_FIELD, ARTIST_FIELD, AGE_FIELD];
   
    handleSuccess(event) {
        const toastEvent = new ShowToastEvent({
            title: "Album created",
            message: "Record ID: " + event.detail.id,
            variant: "success"
        });
        this.dispatchEvent(toastEvent);
    }
}