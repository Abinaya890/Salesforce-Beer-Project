public class ContactSearch {
    public static list<contact>  searchForContacts(String a,String b)
    {
        List <contact > con= [SELECT Id ,Name FROM contact 
                              WHERE LastName=:a 
                              AND MailingPostalCode =:b];
        return con;
    }
}