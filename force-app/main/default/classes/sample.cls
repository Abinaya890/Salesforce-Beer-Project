public class sample {
    public static void apexsample()
    {
        lead l = new lead();
        l.lastname='abi';
        l.City='cbe';
        l.Company='lala';
        l.Phone='876833738';
        system.debug(l);
        insert l;
        
    }
    
    public static void abc()
    {
        contact con = new contact(lastname ='abinaya', phone='987654321');
        system.debug(con);
        insert con;
    }
    
    public static void multiple(){
        list<contact> con =[select lastname, phone, email from contact where lastname like 'A%'];
        list<account> acc= new list<account>();
        for(contact abc: con)
        {
            account ac = new account();
            ac.name= abc.lastname;
            ac.phone = abc.phone;
            acc.add(ac);
        }
        insert acc;
    }
    
    public static void opt(){
        list<opportunity> opty =[select name, amount from opportunity where name like 'U%' LIMIT 3];
        list<lead> le = new list<lead>();
        for(opportunity a : opty)
        {
            lead le1 = new lead();
            le1.lastname= a.name;
            le1.Company='neelaprasanth sweets';
            le1.annualrevenue = a.amount;
            le.add(le1);
            
        }
        system.debug(le);
        insert le;
    }
}