@restresource(urlmapping ='/name/abi/*')
global class Postintegration {
    @httppost
    
    global static account ac(string name, string phone)
    {
        account a =new account();
        a.name =name;
        a.phone = phone;
       
        insert a;
         return a; 
    }
   
}