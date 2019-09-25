public with sharing class AddressExtController {
    public AddressExtController() {

    }
    @AuraEnabled
    public static List<string> getExtAddres(string con){
        List<string> ls = new List<string>();
        //where categoryName__c like +'%'+con+'%'
        List<Categorys__x> lc = [Select ExternalId,categoryID__c, categoryName__c from Categorys__x ];
        for(Categorys__x cx:lc){
            ls.add(cx.categoryName__c);
        }
        return ls;
    }
}
