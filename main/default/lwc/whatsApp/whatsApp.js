/* eslint-disable no-unused-vars */
/* eslint-disable no-alert */
import { LightningElement,api } from 'lwc';
import sentTemplateMessage from '@salesforce/apex/whatsappcontroller.sentTemplateMessage';
export default class WhatsApp extends LightningElement {

@api recordId

Messagehandler(){

    sentTemplateMessage({contactId :this.recordId})
    .then(result =>{
        window.alert("Message sent succesfully");
    })
.catch( error=>{
    // eslint-disable-next-line no-alert
    window.alert("Message failed");
})
}

}