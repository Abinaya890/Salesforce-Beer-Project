({
            handleReview : function(component, event, helper) 
            {      //  alert("Fired")
                var componetEvent = component.getEvent('CreateContacts');
                componetEvent.setParams({
                    'CreateContacts' : component.get('v.ContactRecord')
                });
                componetEvent.fire();
        
            }
    
});