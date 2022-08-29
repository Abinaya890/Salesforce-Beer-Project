public class ContactAndLeadSearch {
    public static List <List<sObject>>  searchContactsAndLeads(string name)
    {
        //String  res = (FIND '\' + name + '\'   IN ALL FIELDS 
          //             RETURNING Lead(Name,FirstName,LastName ), Contact(FirstName,LastName));
          //             
 String searchQuery = 'FIND \'' + name + '\'  IN ALL FIELDS RETURNING Lead(Name,FirstName,LastName ), Contact(FirstName,LastName )';
        
        List<List<sObject>> searchConLead = search.query(searchQuery);
        return searchConLead;
    }
}