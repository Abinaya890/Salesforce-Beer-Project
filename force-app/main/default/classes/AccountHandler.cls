public class AccountHandler {
   
	public static  Account insertNewAccount( String name)
    { 
       Account ac = new Account();
		ac.Name = name;
        try
        {
        insert ac;    
        }
       	catch (Exception e)
        {
            return null;
        }
		return ac;        
    }
}