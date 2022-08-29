public class contactcontrol {
    @auraenabled
    public static list<contact> getconlist(){
        list<contact> con= [select id, name, phone, email from contact where email!= null limit 10];
        return con;
        
    }
}