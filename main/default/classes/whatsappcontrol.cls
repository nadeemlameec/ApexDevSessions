public class whatsappcontrol {

    @AuraEnabled
    public static Boolean sentTemplateMessage(String contactId){
        Contact contactDetail=[Select id,Phone FROM Contact Where id=:contactId];

        String whatsapp = '91'+contactDetail.Phone;

        Http http =new Http();

        HttpRequest req =new HttpRequest();

        req.setEndpoint('https://graph.facebook.com/v15.0/108914428744704/messages');
        req.setHeader('Content-Type', 'application/json');
        req.setMethod('POST');

        String body ='{ "messaging_product": "whatsapp", "to":"'+whatsapp+'","type": "template", "template": { "name": "hello_world", "language": { "code": "en_US" } } }';

        req.setBody(body);

        String apiToken ='EAAMmbNGkyzgBAPwBXZCmbsjZCpnolc1DuRs2XbAXlg7fDYyQKxBwXvvT95FF8fNAjIGDuBZA4SRVAXgJYcAJg1PHoQxDqn2fXC4sGVKDdjuAB9ZAaeuNtCvuY9wabK9KTAgBSf3PGe06qMOvI8QZBeZBo00bwSk5072fusKDKb8AZBWrvQUDwYTW7WPN84cSpZBVxX73AUvu4XeRU4RBw5tK';
        req.setHeader(Authorization, 'Bearer '+ apiToken)

        HttpResponse res =http.send(req);

        if (res.getStatusCode()==200) {
         return true;   
        }
        return false;
    }
    

}