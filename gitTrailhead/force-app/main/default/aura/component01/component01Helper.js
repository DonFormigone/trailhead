({
    salvarHelper : function(component, event, helper, nome) {
        var action = component.get('c.salvarApex');
        action.setParams({
            nome:nome
        });
        action.setCallback( this,function(response){
            var status = response.getState();
            if (status == 'SUCCESS') {
                component.set('v.Name', response.getReturnValue());
                
            }else{
                
            }
        });
        $A.enqueueAction(action);
    }
})