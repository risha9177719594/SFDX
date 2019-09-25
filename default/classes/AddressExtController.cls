public with sharing class AddressExtController {
    public AddressExtController() {

    }
    @AuraEnabled
    public static List<string> getExtAddres(string con){
        system.debug('test');
        system.debug('test'+con);
        List<string> ls = new List<string>();
        //where categoryName__c like +'%'+con+'%'
        List<Categorys__x> lc = [Select ExternalId,categoryID__c, categoryName__c from Categorys__x ];
        for(Categorys__x cx:lc){
            ls.add(cx.categoryName__c);
        }
        return ls;
    }
    @AuraEnabled
    public static List<string> getExtAddres1(string con){
        system.debug('test');
        system.debug('test'+con);
        List<string> ls = new List<string>();
        //where categoryName__c like +'%'+con+'%'
        List<Categorys__x> lc = [Select ExternalId,categoryID__c, categoryName__c from Categorys__x limit 10];
        for(Categorys__x cx:lc){
            ls.add(cx.categoryName__c);
        }
        return ls;
    }
}