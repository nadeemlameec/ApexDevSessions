import { LightningElement,track } from 'lwc';

export default class Training extends LightningElement {



@track greeting='World';
@track Name;

changeHandler(event){
    this.greeting =event.target.value;
   


}
changeHandler1(event){
    this.Name =event.target.value;
}

}