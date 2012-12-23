# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	# $("#local_cep").mask("99999-999")
	# local_lat = $('#local_lat').attr('value')
	# local_lng = $('#local_lon').attr('value')
	# local_titulo = $('#local_titulo').attr('value')
	# local_descricao = $('#local_descricao').attr('value')

	# map = new GMaps
	# 	div: '#map_locais'
	# 	lat:  local_lat 
	# 	lng:  local_lng

	# map.setCenter(local_lat, local_lng)

	# map.addMarker
	# 	lat: local_lat
	# 	lng: local_lng
	# 	title: local_titulo
	# 	infoWindow: 
	# 		content: local_descricao

	$("#local_cep").focusout ->
		cep = $("#local_cep").attr('value')
		GMaps.geocode
			address: cep
			callback: (results, status) ->
				if (status == 'OK')
					latlng = results[0].geometry.location
					map.setCenter(latlng.lat(), latlng.lng())
					$('#local_lat').attr('value', latlng.lat()) 
					$('#local_lon').attr('value', latlng.lng()) 
					$('#info').html(results[0].street_address)
					map.addMarker
						lat: latlng.lat()
						lng: latlng.lng()
						title: results[0].formatted_address
						infoWindow: 
							content: results[0].street_address 

				else
					$('#info').html("Não consegui geolocalizar o cep: " + $("#local_cep").attr('value'))
