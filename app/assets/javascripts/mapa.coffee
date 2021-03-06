$(document).ready ->

	myOptions =
		center: new google.maps.LatLng(-22.22809,-42.973022)
		zoom: 8
		mapTypeId: google.maps.MapTypeId.ROADMAP
		streetViewControl: false
		overviewMapControl: true
		mapTypeControl: true
		mapTypeControlOptions:
			position: google.maps.ControlPosition.TOP_CENTER
		zoomControl: true
		zoomControlOptions:
			style: google.maps.ZoomControlStyle.SMALL	
		
	map = new google.maps.Map(document.getElementById("mapa"), myOptions)

	$.get('/mapa_json', (data) ->
		$.each(data, (i, m) ->
			marker = new google.maps.Marker(
				map: map
				url: m[0].url
				position: new google.maps.LatLng(m[0].lat, m[0].long)
				icon: '/assets/waterdrop.png'
			)
			google.maps.event.addListener marker, 'click', -> 
				window.open "/cidades/#{marker.url}"
		)
	)


