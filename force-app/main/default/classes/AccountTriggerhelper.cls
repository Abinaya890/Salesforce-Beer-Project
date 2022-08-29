public class AccountTriggerhelper {
    public static void trigger1(list<account> ac)
    {
        for(account ab : ac )
        {
            ab.description ='accountname = ' +ab.Name;
        }
    }
    
    public static void beforeupdate(list<account> acc)
    {
        for(account a : acc)
        {
            if(a.Phone == null){
                a.phone.adderror('phone field is required');
            }
        }
    }
    
    public static void bfrdelete(list<account> act)  
    {
        Id profileId = UserInfo.getProfileId();
        Profile profileName = [SELECT Name FROM Profile WHERE id=:profileId];
        for(Account a : act)
        {
            if(profileName.Name != 'Standard User')
            {
                a.addError('Only Standard User can Delete');
            }
        }
        
    }
    
    
    
    
    
    
    
}