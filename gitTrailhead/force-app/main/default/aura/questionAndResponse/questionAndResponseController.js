({
    applyMaskAndHidCustomButtons : function(component){
        var val=component.find("txtBuscar").get('v.value');
        component.find("txtBuscar").set('v.value',val);
    },
})