@restresource (urlmapping ='/acc/name/*')
global class Getintegration{
    
    @httpget
    global static list<account> ac(){
        RestRequest req = RestContext.request;
         String accountId=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        return [select name, (select lastname from contacts) from account where id = :accountId];
        
        
        
    }
}