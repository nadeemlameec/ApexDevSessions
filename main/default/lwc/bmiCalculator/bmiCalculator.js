/* eslint-disable radix */
/* eslint-disable no-dupe-class-members */
import { LightningElement,track } from 'lwc';

export default class BmiCalculator extends LightningElement {

    @track Calculator;

    heightChangeHandler(event){
        this.height=event.target.value;
    }
    weightChangeHandler(event){
        this.weight=event.target.value;
    }

    bmicalculate(){
        let wgt =this.weight;
        let hgt =this.height * this.height;
        let BMI = wgt/hgt;

        if(BMI <= 22.0){
        this.Calculator = `Your BMI is ${BMI} and you are Weightly :) `;
        }
        
        else if(BMI >= 22 && BMI <=27){
            this.Calculator = `Your BMI is ${BMI} and you should control your weight now `;
            }
        else{
            this.Calculator = `Your BMI is ${BMI} and you are overweight `;
            }

    }


} 

  

