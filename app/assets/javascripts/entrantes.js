function mostra_processo_principal(){
		$("#entrante_procedimento").click(function(){
	    var selecionado = $("#entrante_procedimento").val();
	    if(selecionado == 'ANEXADO'){
	        $('#processo_principal').show();
	    } else {        
	        $('#processo_principal').hide();
	    }    
		});
};

function mascara_form_acoes(){
	$("#entrante_prot_doc").mask("99999.999999/9999");
	$("#entrante_dt_prot_doc").mask("99/99/9999");
	$("#entrante_processo_principal").mask("99999.999999/9999");
	$("#entrante_dt_procedimento").mask("99/99/9999");
};

$(document).ready(function() {
	mascara_form_acoes();
	mostra_processo_principal();
});
