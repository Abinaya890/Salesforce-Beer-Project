({
		Beersearch : function(component, event, helper) {
        var componentevent = component.getEvent("BeerEvent");
        var BeerInput = component.find('searchInput').get('v.value');
       componentevent.setParams({SearchText : BeerInput});     
        componentevent.fire();
        
	}
})