/* eslint-disable no-dupe-class-members */
/* eslint-disable no-undef */
/* eslint-disable radix */
import { LightningElement,track } from 'lwc';

export default class SimpleCalc extends LightningElement {

    @track Calculator;
    @track Previous_result=[]
    @track showPreviousresulttoggle=false;
    

    firstNumber;
    secondNumber;
   

    numberChangeHandler(event){
        const inputBoxName =event.target.name;
        if(inputBoxName==='firstNumber'){
            this.firstNumber= event.target.value;
        }
        else if (inputBoxName==='secondNumber'){
            this.secondNumber= event.target.value;

        }
} 

addHandler(){
    const firstN =parseInt(this.firstNumber);
    const secondN =parseInt(this.secondNumber);

    this.Calculator = `the Sum of ${firstN} and ${secondN} is ${firstN+secondN}`;
    this.Previous_result =push(Calculator);

}

subHandler(){
    const firstN =parseInt(this.firstNumber);
    const secondN =parseInt(this.secondNumber);

    this.Calculator = `The Sub of ${firstN} and ${secondN} is ${firstN-secondN}`;
    this.Previous_result =push(Calculator);

}

multHandler(){
    const firstN =parseInt(this.firstNumber);
    const secondN =parseInt(this.secondNumber);

    this.Calculator = `The Multiple of ${firstN} and ${secondN} is ${firstN*secondN}`;
    this.Previous_result =push(Calculator);

}

divHandler(){
    const firstN =parseInt(this.firstNumber);
    const secondN =parseInt(this.secondNumber);

    this.Calculator = `The Division of ${firstN} and ${secondN} is ${firstN/secondN}`;
    this.Previous_result =push(Calculator);

}

Previous_result(){

    this.showPreviousresulttoggle=even.target.checked;
}


}