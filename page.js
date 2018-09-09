var form_name = "";
var janela;

function getProjects(){
 if(!janela || janela.closed){
	 janela = window.open('getProjects.jsp','','top=0,left=0, width=325,height=300');
 }else{
	 janela.focus();
 }	
}

function setValMultiplo(val){
	form_name.val(val);
	janela.close();
}

function setValUnico(val, form){
	$(form).val(val == undefined ? "" : val);
	janela.close();
}

function setValJavascript(val, form){
	document.getElementById(form).value=val === undefined ? "" : val;
	janela.close();
}

// Function if you use ajax
$(function(){
	var busca = window.location.search;
	var pagina = 'app'+busca;
	form_name = $('input[name=projetos]');
	$.post(pagina , function(resultado){	
	} ,'json');
});
