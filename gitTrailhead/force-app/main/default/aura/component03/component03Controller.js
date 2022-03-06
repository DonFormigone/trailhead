({
    dispararEventoComponent : function(component, event, helper) {
        var eventoComponent = component.getEvent("eventoComponent");
        eventoComponent.setParams({
            "message" : "Funcionando"
        });
        eventoComponent.fire();
        var vazio = '';
    }
})