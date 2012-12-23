# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	$(document).ready ->
		$('#viagem_data_saida').datepicker
			numberOfMonths: 3,
			showButtonPanel: true

		$('#viagem_data_saida').datepicker('option', 'dateFormat', "dd/mm/yy")

		$('#viagem_data_retorno').datepicker
			numberOfMonths: 3,
			showButtonPanel: true
		
		$('#viagem_data_retorno').datepicker('option', 'dateFormat', "dd/mm/yy")
			
			
		false
	
