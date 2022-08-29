({
	handleClick : function(component, event, helper) {
		var id =component.get('v.recordid');
        var pageReference = component.find("navService");
        var pageReferenceNav = {    
            "type": "standard__component",
            "attributes": {
                "componentName": "c__createbeerorder"    
            },    
            state: {
                C__Beerid:  id ,
                //"beerName" : component.get('v.beerName')
            }
        };
        pageReference.navigate(pageReferenceNav);
	}
})