/* eslint-disable no-unused-vars */
/* eslint-disable no-undef */
import { LightningElement,track } from 'lwc';

export default class Word_counter extends LightningElement {

    @track Calculator ;
    @track Iti;

    wordChangeHandler(event){
        this.word=event.target.value;
    }    


    WordCalculator(){
        let word =this.word;
        let length = word.length; 
        let count = 1;
        let i;
        
        for( i=0;i<=length;i++) {
             if (word[i]===' '){
                 count++;
             } 
        
        }

        this.Calculator =`${length} Words and ${count} Sentences`

    }

    word_to_italic(){  
        let result = word.italics();
         this.Iti =` ${result} `

    }

}