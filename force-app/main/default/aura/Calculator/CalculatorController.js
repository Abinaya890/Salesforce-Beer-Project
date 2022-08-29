({
	addClick : function(component, event, helper) {
        var num1= component.get('v.input1');
         var num2= component.get('v.input2');
        //alert(num1);
       // alert(num2);
        var ans = parseInt(num1) + parseInt(num2);
        component.set("v.answer",ans)
       // alert(ans);
	},
   subClick : function(component, event, helper) {
        var num1= component.get('v.input1');
         var num2= component.get('v.input2');
        //alert(num1);
       // alert(num2);
        var ans = parseInt(num1) - parseInt(num2);
        component.set("v.answer",ans)
       // alert(ans);
		
	},
   multiClick : function(component, event, helper) {
		 var num1= component.get('v.input1');
         var num2= component.get('v.input2');
        //alert(num1);
       // alert(num2);
        var ans = parseInt(num1) * parseInt(num2);
        component.set("v.answer",ans)
       // alert(ans);
	},
    divClick : function(component, event, helper) {
         var num1= component.get('v.input1');
         var num2= component.get('v.input2');
        //alert(num1);
       // alert(num2);
        var ans = parseInt(num1) /parseInt(num2);
        component.set("v.answer",ans)
       // alert(ans);
		
	}
})