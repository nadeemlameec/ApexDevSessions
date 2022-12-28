/* eslint-disable no-dupe-class-members */
/* eslint-disable no-unused-vars */
/* eslint-disable radix */
/* eslint-disable no-alert */
import { LightningElement,track } from 'lwc';
export default class Training extends LightningElement {


@track currentOutput;
Number1;
Number2;


Num1handler(event){
    this.Number1 =parseInt(event.target.value);
}

Num2handler(event){
    this.Number2 =parseInt(event.target.value);
    }  

changeHandler(){
    this.currentOutput ='Sum: '+(this.Number1+this.Number2)}
    

} 