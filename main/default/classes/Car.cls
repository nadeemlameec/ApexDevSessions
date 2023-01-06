public class Car {

    public string make;
    public string model;
    public integer speed;
    
    public void display(){
        System.debug('Make of the car '+make);
        System.debug('model of the car '+model);
        System.debug('speed of the car '+speed);


    }
    
    private integer increaseSpeed(){
        speed+=10;
        return speed;
        
    }
    
    public void displayNewCarSpeed(){
        integer newcarspeed=increaseSpeed();
        System.debug('New Car Speed '+newcarspeed );
    }
    
}