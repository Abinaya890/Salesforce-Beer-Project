@restresource (urlmapping='/del/ac/*')
global class deleteint {
    @httpdelete
    global static void accdelete(){
        RestRequest req = RestContext.request;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        account ac=[select id,name from account where id =: accountid];
        delete ac;
            
        
    }
        

}