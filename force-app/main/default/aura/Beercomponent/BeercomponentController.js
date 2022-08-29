({
	dohandle: function(component, event, helper) {
        var EventResult = event.getParam("SearchText");
       console.log(EventResult);
	//alert(EventResult);
	
        
        
        
        var action = component.get('c.SearchBeer');
        action.setParams({
            ac : EventResult
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if(state === 'SUCCESS'){
                var responseValue = response.getReturnValue();
                console.log(' responseValue ', responseValue);
                component.set('v.recordList', responseValue);
            }else{
                console.log(response.getError())
            }
        });
        $A.enqueueAction(action);
    }
    
})