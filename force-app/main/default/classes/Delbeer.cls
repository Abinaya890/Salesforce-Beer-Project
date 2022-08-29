public class Delbeer {
    public static void del(){
        list<beer__c>Acchandler=[SELECT Tags__c, Alcohol__c, Id__c, brewery_id__c, brewery_Name__c, Image__c,
                                 Total_Quantity__c, Remaining_Quantity__c, Price__c, Id, Name FROM Beer__c];
        Delete Acchandler;
    }
}