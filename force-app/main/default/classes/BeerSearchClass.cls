public class BeerSearchClass {
    @AuraEnabled
    public static list<Beer__c> SearchBeer(String ac){
        string abi = ac;
        if(ac == null){
        list<Beer__c> Beerlist=[SELECT Id, Name, Tags__c, Id__c, Alcohol__c, brewery_Name__c, brewery_id__c, Image__c,
                                Total_Quantity__c, Remaining_Quantity__c, Price__c FROM Beer__c ];
        system.debug(Beerlist);
        return Beerlist;
        }
        else{
              list<Beer__c> Beerlist=[SELECT Id, Name, Tags__c, Id__c, Alcohol__c, brewery_Name__c, brewery_id__c, Image__c,
                                Total_Quantity__c, Remaining_Quantity__c, Price__c FROM Beer__c where Name like : abi +'%'];
        system.debug(Beerlist);
        return Beerlist;
        }
    }
 
}