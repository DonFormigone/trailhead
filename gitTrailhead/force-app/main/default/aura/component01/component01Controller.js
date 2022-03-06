({
    salvar : function(component, event, helper) {
         var nome = component.get('v.Name');
         helper.salvarHelper(component, event, helper, nome);
    },
    
    buscarDados : function(component, event, helper) {
        var nome = '';
        helper.salvarHelper(component, event, helper, nome);
   },
   executarEventoApplication: function(component, event, helper){
     var event = $A.get("e.c:eventoComponent01");
     event.setParams({
          "Id": "001"
     });
     event.fire();
     var vazio = '';
   },
   executarEventoComponent: function(component, event, helper){
     var messageComponent = event.getParam("message");
     alert(messageComponent);
   },
})