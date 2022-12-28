import { LightningElement,wire } from 'lwc';
import getcontactList from '@salesforce/apex/FetchContact.getcontactList'

export default class ApiAccount extends LightningElement {
    @wire (getcontactList) contacts;
}