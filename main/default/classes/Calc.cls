public class Calc {
	
    public static decimal sum(decimal x,decimal y){
    
        decimal z = x+y;
        System.debug('the sum is equal to :' +z);
        return z;
    }
    
    
    public static decimal sub(decimal x,decimal y){
    
        decimal z = x-y;
        System.debug('the Sub is equal to :' +z);
        return z;
    }
    
   public static decimal Mult(decimal x,decimal y){
    
        decimal z = x*y;
        System.debug('the Multiplication is equal to :' +z);
        return z;
    }
    
    
}