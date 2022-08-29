public class dmlupdate {
    public static void updatedml()
    {
        contact con = [select name from contact where name ='tim abc'];
        con.firstname ='abinaya';
        con.lastname ='chandrakumar';
        update con;
        
    }
    public static void upd()
    {
      contact con =[select lastname from contact where lastname ='gopi'];
        con.lastname = con.lastName + ' lal';
        update con;
    }
    public static void multi()
    {
        list <lead> l = [select lastname from lead where lastname like 'B%' ];
        for(lead le: l)
        {
            le.lastname = le.lastname + ' BS';
            
        }
        update l ;
    }
}