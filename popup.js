var form_name = "";
var selectAll = false;
var janela;

function closeWindow(){
	var itens = $('[name*="projeto"]:checked')
	.map(function() { return $(this).val().toString(); } )
	.get()
	.join(",");
	window.opener.setValMultiplo(itens);
} // Array Multiplo => Checkbox

function closeWindow2(){
	var item = $('[name*="projeto2"]:checked').val();
	window.opener.setValUnico(item, "#projetos2");
}// Valor unico => Radio 

function selecionaTodos(){
	selectAll = !selectAll;
	$('input:checkbox').each(function(){ $(this).attr('checked',selectAll)})
}
