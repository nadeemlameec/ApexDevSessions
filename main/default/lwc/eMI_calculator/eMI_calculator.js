/* eslint-disable no-const-assign */
/* eslint-disable radix */
import { LightningElement,track } from 'lwc';


export default class EMI_calculator extends LightningElement {

Amount;
Interest;
@track Calculator;


amountChangeHandler(event){
    this.Amount=parseFloat(event.target.value);
}
interestChangeHandler(event){
    this.Interest=parseFloat(event.target.value);
}

emiCalculator(){
    let amt=this.Amount;
    let inte =this.Interest/100;
    let conv = amt*inte;
    let Total_Pay =conv+amt;
    let EMI = Total_Pay/12;

    this.Calculator = `The EMI Per month for ${amt} ,${inte},${conv} with ${this.Interest}% will be ${EMI} , ${Total_Pay}`;
}

}