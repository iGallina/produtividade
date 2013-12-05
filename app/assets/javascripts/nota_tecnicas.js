function mostra_aviso_baixa_estoque(){
		$("#nota_tecnica_status").click(function(){
	    var selecionado = $("#nota_tecnica_status").val();
	    if(selecionado == 'DEFERIDO' || selecionado == 'INDEFERIDO'){
	        alert('Será dada baixa no estoque');
	    }    
		});
};

function mascara_form_nota_tecnica(){
	$("#nota_tecnica_data_nota").mask("99/99/9999");
	$("#nota_tecnica_numero_nota").mask("99999.999999/9999");
	$("#nota_tecnica_numero_processo").mask("99999.999999/9999");
};

$(document).ready(function() {
	mascara_form_nota_tecnica();
	mostra_aviso_baixa_estoque();
});
