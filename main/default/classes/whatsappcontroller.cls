public class whatsappcontroller {
    @AuraEnabled
    public static Boolean sentTemplateMessage(String contactId){
        
        Contact contactDetail=[Select id,Phone FROM Contact Where id=:contactId];

        String whatsapp = '91'+contactDetail.Phone;

        Http http =new Http();

        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://graph.facebook.com/v15.0/108914428744704/messages');
        req.setHeader('Content-Type', 'application/json');
        req.setMethod('POST');

        String body ='{ "messaging_product": "whatsapp", "to":"'+whatsapp+'","type": "template", "template": { "name": "hello_world", "language": { "code": "en_US" } } }';

        req.setBody(body);

        String apiToken ='EAAMmbNGkyzgBAFe8IyRfFh1BaWzvh8ZB33YgAWJaMTUHYi2zEvizQj2WUjy3ENOPUZBFXsi2Wrgzos3Xdh4sZAMPK4KMP5bdlmOQdIEZAAAZBDxjwZAtJoHKRAzvJxcQlGiC4F07CAuGtjDZCENawykQr42yVIWzOmvA71hZBovW9p4dzuPNJYznEGiFm30FvSxekfbKVXcnf38VVjspcnBu';
        req.setHeader('Authorization', 'Bearer '+ apiToken);

     	HTTPResponse res = http.send(req);

        if (res.getStatusCode()==200) {
         return true;   
        }
        return false;
    }
    

}