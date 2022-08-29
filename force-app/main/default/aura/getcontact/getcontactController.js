({
    doInit : function(component, event, helper) {
        var action = component.get("c.getconlist");
        
        
        
        action.setCallback (this,
                            
                            function(response)
                            {
                                var responsevalue  =  response.getReturnValue(); 
                                // <aura:attribute name ="contactlist" type ="contact[]"/>
                                component.set('v.contactlist',responsevalue);
                                console.log(responsevalue);
                            }
                            
                           );
        
        $A.enqueueAction(action,false);
        ///$A.enqueueAction(action);
    }

 })