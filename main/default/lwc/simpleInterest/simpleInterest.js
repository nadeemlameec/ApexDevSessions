/* eslint-disable radix */
import { LightningElement,track } from 'lwc';

export default class SimpleInterest extends LightningElement {


@track currentOutput;
principle;
rate;
time;
principleHandler (event){
    this.principle =parseInt(event.target.value);
}
rateHandler (event){
    this.rate =parseInt(event.target.value);
}
timeHandler (event){
    this.time =parseInt(event.target.value);
}

handleClick(){
    this.currentOutput ='Simple Interest is : '+(this.principle*this.rate*this.time)
}

}