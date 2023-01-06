public class Calculator {
    
	integer num1;
    integer num2;
    integer total;
    
    
    public integer sum(integer num1,integer num2)
    {
         total= num1+num2;
        	return total;
    }
    
    
    public integer sub(integer num1,integer num2)
    {
        if(num1>num2){
         total= num1-num2;   	
    }
        return total;
    }
    
    public integer Mult(integer num1,integer num2)
    {
         total= num1*num2;
        	return total;
    }
    
   
    }