@RestResource (urlMapping = '/ins/v1/*')
global class updateint
{
    @HttpPatch
    global static Account postAccount(string name)
    {
        RestRequest req = RestContext.request;
        String accountId=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        system.debug(accountid);
        Account acc = new Account();
        acc.Name =name;
      
        
        acc.id = accountId;
        system.debug( acc.id );
        
        update acc;
        return acc;
    }
 
}