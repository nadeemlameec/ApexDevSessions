@isTest

public class testclass {

    @isTest
    public static void contacttestclass() {
        List <Contact> testcontact =new List<Contact>();

        testcontact.add(new Contact(LastName='Test1',AccountId ='0015j00000tfMgnAAE'));
        testcontact.add(new Contact(LastName='Test2',AccountId ='0015j00000tfMgnAAE'));
        testcontact.add(new Contact(LastName='Test3',AccountId ='0015j00000tfMgnAAE'));

        insert testcontact; 

        List <Contact> cont =[SELECT id from Contact];
    }
}