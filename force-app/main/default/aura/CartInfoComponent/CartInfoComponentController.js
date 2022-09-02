({

	goToCart : function(component, event, helper) {
		var pageReference = component.find("navService");
		var pageReferenceNav = {    
			"type": "standard__component",
			"attributes": {
				"componentName": "c__CartDetails"    
			},    
			state: {
				c__cartRecord : component.get("v.recordList")
				
			}
		};
		pageReference.navigate(pageReferenceNav);
	
		
	},
	cart : function(component, event, helper) 
    {
        var params = event.getParam('beerRecord');
        if(params){
            var beerRecord = params.beerRecord;
            var existingRecords = component.get('v.cartList');
            if(existingRecords){
                existingRecords.push(beerRecord);
                component.set('v.cartList', existingRecords);
            } else {
                existingRecords = [];
                existingRecords.push(beerRecord);
				component.set('v.cartList', existingRecords);
            }
            var resultsToast = $A.get("e.force:showToast"); 
            resultsToast.setParams({ "title": "Added to Cart", "message":params.Name + " has been successfully added to cart.", "type" : "success" });
            resultsToast.fire();
            var names = [];
        for(var i=0; i<component.get('v.cartList').length;  i++)
        {
            names.push(component.get('v.cartList')[i].Id);
            console.log(component.get('v.cartList')[i].Id);
        }
        console.log(names);
        component.set('v.beerNameList', names);
        

    }
},
AddingProduct : function(component, event, helper) 
    {
          alert("AddingProduct")
        var names = [];
        for(var i=0; i<component.get('v.cartList').length;  i++)
        {
            names.push(component.get('v.cartList')[i].Id);
            console.log(component.get('v.cartList')[i].Id);
        }
        console.log(names);
        component.set('v.beerNameList', names);
        

    }
})