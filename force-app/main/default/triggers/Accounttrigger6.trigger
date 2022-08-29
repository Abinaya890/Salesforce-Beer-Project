trigger Accounttrigger6 on Account (after update) 
{
     /* if(trigger.isinsert && trigger.isafter)
    {
        Acchandler.accountcon(trigger.new);
        system.debug('trigger.new =' + trigger.new);
        system.debug('trigger.newmap =' + trigger.newmap);
    }
*/
     if(trigger.isupdate && trigger.isafter)
    {
        updatehandler.updateno(trigger.new);
        system.debug('trigger.new =' + trigger.new);
        system.debug('trigger.newmap =' + trigger.newmap);
    }

}