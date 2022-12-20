import { LightningElement } from 'lwc';

export default class Quiz_App extends LightningElement {

    
    myQuestions=[
        {
            id:"Question1",
            question:'Which of the following is not a template loop?',
            answer:{
                a:"for:each",
                b:"Iterator",
                c:"Map Loop"
            },
            correctAnswer :"c"

        },


        {
            id:"Question2",
            question:'Prime Minister of India?',
            answer:{
                a:"N Modi",
                b:"R Gandhi",
                c:"A Kejriwal"
            },
            correctAnswer :"a"

        },


        {
            id:"Question3",
            question:'Fifa World cup is organised in which country?',
            answer:{
                a:"Japan",
                b:"America",
                c:"Qatar"
            },
            correctAnswer :"c"

        }

    ]
   



    changeHandler(event){
    console.log("name",event.target.name)
    console.log("value",event.target.value)
    
    const{name,value} =event.target
        this.selected={...this.selected,[name]:value}
    }

    selected={}
   correctAnswer =0

   submitHandler(event){
    event.preventDefault()

    }





}


