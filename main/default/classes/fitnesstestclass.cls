@isTest

public  class fitnesstestclass {
    @isTest public static void BMItest()
     {
        decimal BMI_Calculator =fitness.BMI(1.52,60.0).setScale(2);
         System.assertEquals(25.97, BMI_Calculator);
    }
    
    @isTest  static void pacetest(){
        decimal pacer = fitness.pace (100,10);
        System.assertEquals(10, pacer);

    }
}