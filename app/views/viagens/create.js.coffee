$ ->
	form = #{:partial => 'form', viagem => @viagem}
	$('#new_viagem').html('form')
	$('#new_viagem').effect('highlight', {}, 1500)
