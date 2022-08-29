trigger newaccount on Account (before insert,before update, before delete) {
    
    if(trigger.isinsert && trigger.isbefore)
    {
        AccountTriggerhelper.trigger1(trigger.new);
        system.debug('trigger.new =' + trigger.new);
        system.debug('trigger.newmap =' + trigger.newmap);
    }
    if(trigger.isupdate && trigger.isbefore)
    {
        AccountTriggerhelper.beforeupdate(trigger.new);
         system.debug('trigger.new =' + trigger.new);
        system.debug('trigger.newmap =' + trigger.newmap);
         system.debug('trigger.old =' + trigger.old);
        system.debug('trigger.oldmap =' + trigger.oldmap);
    }
    if(trigger.isdelete && trigger.isbefore)
    {
        AccountTriggerhelper.bfrdelete(trigger.new);
        
    }
}


/* if(Trigger.isBefore)
{ 
If(Trigger.isInsert) 
{

// write the code for before Insert

}

Else if(Trigger.isUpdate)

{

// write the code for before update

}

Else if(Trigger.isDelete)

{

// write the code for before delete

}



}

Else if(Trigger.isAfter)

{

If(Trigger.isInsert)

{

// write the code for after insert

}

Else if(Trigger.isUpdate)

{

// write the code for after update

}

Else if(Trigger.isDelete)

{

// write the code for after delete

}

Else if(Trigger.isUndelete)

{

// write the code for after undelete

}

}
*/