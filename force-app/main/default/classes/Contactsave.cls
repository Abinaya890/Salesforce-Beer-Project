public class Contactsave {
     @AuraEnabled
    public static void css(list<contact> con){
        system.debug(con);
      insert con;
    }
}