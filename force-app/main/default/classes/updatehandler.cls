public class updatehandler {
    public static void updateno(list<account> acc)
    {
        set<id> accid = new set<id>();
        for(account a : acc)
        {
            accid.add(a.id);
        }
        list<contact> con = new list<contact>();
        list <account> acclist =[select id, name, phone,(select id, phone from contacts) from account where id in: accid];
        for(account ab : acclist){
            for(contact c : ab.contacts){
                c.Phone = ab.Phone;
               con.add(c);
               
            }
            
        }
       system.debug(con);
        if(con.size() >0 ){
            update con;
        }
        
    }
}