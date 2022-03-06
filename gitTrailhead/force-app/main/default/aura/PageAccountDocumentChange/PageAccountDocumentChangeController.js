({
    salvar : function(component, event, helper) {
        var nome = component.get('v.Name');
        helper.salvarHelper(component, event, helper, nome);
   },
   
})