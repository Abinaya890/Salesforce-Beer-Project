public class dml1 {
    public static void dml()
    {
        list<account> acc = [select name, phone from account where name like 'Edge%'];
        list<contact> con = new list<contact>();
        list<opportunity> opty = new list<opportunity>();
         for(account a : acc)
         {
            contact con1 = new contact();
             con1.lastname = a.name;
             con1.phone = a.phone;
             con1.AccountId= a.id;
             con.add(con1);
         }
        insert con;
        
        for(account b : acc)       {
        opportunity opty1 = new opportunity();
            opty1.name= b.name;
            opty1.Accountid=b.Id;
            opty1.StageName='Prospecting';
            opty1.closedate= date.today()+7;
        
            opty.add(opty1);
            }
        insert opty;
    }
}