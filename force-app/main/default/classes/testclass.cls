@istest
public class testclass {
    public static testmethod void add()
    {
        Integer la = apexsum.add(10,20);
            system.assertequals(30,la);
    }
       public static testmethod void sub()
    {
        Integer la = apexsum.sub(20,10);
            system.assertequals(10,la);
    }
     public static testmethod void multi()
    {
        Integer la = apexsum.multi(10,20);
            system.assertequals(200,la);
    }
     public static testmethod void div()
    {
        Integer la = apexsum.div(20,20);
            system.assertequals(1,la);
    }
        }