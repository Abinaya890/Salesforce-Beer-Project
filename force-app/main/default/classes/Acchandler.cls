public class Acchandler 

{
    Public static void accountcon(list<account> ac)
    {
        list<contact> con = new list<contact>();
        for(account a : ac)
        {
            contact co= new contact();
            co.lastname = a.name;
            co.Phone = a.phone;
            co.AccountId= a.Id;
            con.add(co);
        }
        
        insert con;
    }
    
}