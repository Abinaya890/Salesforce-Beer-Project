public class RandomContactFactory {
   
    public static List<Contact> generateRandomContacts (Integer n1,String LastName1)
    {
        List<Contact> contacts = new List<Contact>();
        for(integer i =1 ; i<=n1; i++ )
        {
            contacts.add(new Contact( FirstName ='Test '+i,LastName=LastName1));
        }
        insert contacts;
        return contacts;
    }
}