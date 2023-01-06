@istest

public class testcalc {

    
   @istest static void testsum()
   {
        Decimal add =Calc.sum(10, 12);
       
        System.assertEquals(22, add);
       
       System.debug(add);
        
        
    }
    @istest static void testsub()
   {
        Decimal minus =Calc.sub(10, 12);
       
        System.assertEquals(-2, minus);
        System.debug(minus);
        
    }
    
      @istest static void testMult()
   {
        Decimal multi =Calc.mult(10, 12);
       
        System.assertEquals(120, multi);
       System.debug(multi);
        
        
    }
     
}