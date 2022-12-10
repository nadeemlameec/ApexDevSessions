public class Cat{
    String cat_sound ='Meow';
    String Color ='White';
    String Name ='Humpy';
    Integer Age =1;
    

 
    public void Sound(){
        System.debug(cat_sound);
    }

    
    public void Physical(){
        System.debug('the name of the cat is '+ Name +'. and the color is '+ Color + ' and age is ' + Age );
    }
}