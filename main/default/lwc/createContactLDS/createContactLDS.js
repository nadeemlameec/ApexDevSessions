/* eslint-disable no-unused-vars */
import { LightningElement,track } from 'lwc';
import {createRecord} from 'lightning/uiRecordApi';
export default class CreateContactLDS extends LightningElement {

    contactNameHandler(event){
        this.ContactName=event.target.value;
    }

    contactEmailHandler(event){
        this.ContactEmail=event.target.value;
    }

    contactPhoneHandler(event){
        this.ContactPhone=event.target.value;
    }

    createcontact(){
        const fields={
            'LastName':this.ContactName,
            'Phone':this.ContactPhone,
            'Email':this.ContactEmail
        };
        const recordInput ={apiName:'Contact',fields};
        createRecord(recordInput).then(Response=>{
            console.log('contact has been created successfully '+Response.id)
        }).catch(error=>{
            console.log('Error in creating the record - ',error.body.message)
        })

    }


}
