<%-- 
    Document   : mapbox1
    Created on : 10 Aug, 2018, 11:51:09 AM
    Author     : 06rit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8' />
    <title>2015 map navigation controls</title>
    <meta name='viewport' content='initial-scale=1,maximum-scale=1,user-scalable=no' />
    <script src='https://api.tiles.mapbox.com/mapbox-gl-js/v0.47.0/mapbox-gl.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <link href='https://api.tiles.mapbox.com/mapbox-gl-js/v0.47.0/mapbox-gl.css' rel='stylesheet' />
    <style>
        body { margin:0; padding:0; }
        #map { position:absolute; top:0; bottom:0; width:100%; }
    </style>
</head>
<body>
<style>
    .mapboxgl-popup {
        max-width: 400px;
        font: 12px/20px 'Helvetica Neue', Arial, Helvetica, sans-serif;
    }
    #menu {
        position: absolute;
        background: #fff;
        padding: 10px;
        font-family: 'Open Sans', sans-serif;
    }
</style>

<div id='map'></div>

<script>
mapboxgl.accessToken = 'pk.eyJ1Ijoicml0YWRod2FqIiwiYSI6ImNqa2w1NG8yZzF4Zmczdm54b21ta3lhOWwifQ.2St8DwubnG-lWeVlKOKo_w';
var map = new mapboxgl.Map({
    container: 'map', // container id
    style: 'mapbox://styles/mapbox/streets-v9',
    center: [10.00000000, 1.50000000], // starting position
    zoom: 6 // starting zoom
});



// Add zoom and rotation controls to the map.
map.addControl(new mapboxgl.NavigationControl());



map.on('load', function () {
    // Add a layer showing the places.
    map.addLayer({
        "id": "places",
        "type": "symbol",
        "source": {
            "type": "geojson",
            "data": {
                "type": "FeatureCollection",
                "features": [{
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Estadio de Bata</strong><p>Estadio de Bata is a multi-use stadium in Bata, Equatorial Guinea. The stadium was constructed by the Chinese contractor Covec and completed in 2007 with a capacity of 22,000 people in a single tier pre-cast concrete structure. It was a venue for the 2008 Women's African Football Championship. It was expanded in 2011 with a new steel substructure upper tier to a 35,000 capacity as one of the host stadiums for the 2012 Africa Cup of Nations including the opening ceremony and semi-final matches. The stadium is located about 5 kilometers from the coast and adjacent to a sport complex currently under construction which features an indoor sports hall, covered swimming pool, hotel and most main sporting codes.<br><img src=\"images/Estadio de Bata.jpg\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [9.788149, 1.823117]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Bata, Equatorial Guinea</strong><p>Bata, is a port city in the Litoral province of Equatorial Guinea. With a 2005 estimated population of 173,046, it is the largest city in Equatorial Guinea. It lies on the Atlantic Ocean coast of Río Muni. Bata was formerly capital of Equatorial Guinea and is a transport hub and port, from which ferries sail to Malabo and Douala, while fliers can land at Bata Airport. Bata is also known for its nightlife and market.<br><img src=\"images/Bata.jpg\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [9.75000000, 1.85000000]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Nuevo Estadio de Malabo</strong><p>Estadio de Malabo is a multi-purpose stadium in Malabo, Equatorial Guinea. It is currently used mostly for football matches. The stadium holds 15,250 and opened in 2007. It is currently the home ground of the Equatorial Guinea national football team. One of the host stadiums for the 2012 Africa Cup of Nations, it hosted the final of the Women's African Nations Football cup in 2008. Equatoguinean Premier League sides Atlético Malabo, Atlético Semu, Deportivo Unidad, Sony Elá Nguema, The Panthers and Vegetarianos all play their league games at this stadium. <br><img src=\"images/Estadio de Malabo.JPG\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [8.76916667, 3.72500000]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Malabo</strong><p>Malabo,  is the capital of Equatorial Guinea and the province of Bioko Norte. It is located on the north coast of the island of Bioko, formerly known by the Bubis, its indigenous inhabitants, as Etulá, and as Fernando Pó by the Europeans. The city has a population of approximately 187,302 inhabitants. Spanish is the official language of the city and of the country as well. Spanish is the most-spoken language and practically the only one used, except some French and Portuguese. <br><img src=\"images/Malabo.jpg\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [8.78333333, 3.75000000]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Estadio de Mongomo</strong><p>The Estadio de Mongomo is a multi-sport stadium in Mongomo, Equatorial Guinea. In November 2014, it was announced the stadium will be a venue for the 2015 Africa Cup of Nations. Capacity: 15,000. <br><img src=\"images/Stade-Mongomo.jpg\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [11.29916667, 1.65111111]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Mongomo</strong><p>Mongomo is a town in the province of Wele-Nzas on mainland Equatorial Guinea, on the eastern border, roughly 1 km (0.62 mi) west of Gabon's Woleu-Ntem Province. Mongomo was named a host city of the 2015 African Cup of Nations. <br><img src=\"images/Mongomo.jpg\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [11.31666667, 1.62861111]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Nuevo Estadio de Ebebiyín</strong><p>The Neuvo Estadio de Ebebiyín is a multi-sports stadium in Ebebiyín, Equatorial Guinea. In October 2014, the stadium hosted the Copa de la Primera Dama final. In November 2014, it was announced the stadium would be a venue of the 2015 Africa Cup of Nations. Capacity:8,000. <br><img src=\"images/Nuevo Estadio de Ebebiyin.png\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [11.31194444, 2.14111111]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Ebebiyín</strong><p>Ebebiyín is a town in the northeastern corner of mainland Equatorial Guinea. It is the capital of the province of Kié-Ntem. t lies on the three-party border between Equatorial Guinea, Gabon and Cameroon. It is the end point of three main transport routes coming from Bata, Yaoundé and major cities in central Gabon. It is also the capital of the Kié-Ntem Province. <br><img src=\"images/Ebebiyin.png\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [11.31666667, 2.15000000]
                    }
                }]
            }
        },
        "layout": {
            "icon-image": "{icon}-15",
            "icon-allow-overlap": true
        }
    });

    // When a click event occurs on a feature in the places layer, open a popup at the
    // location of the feature, with description HTML from its properties.
    map.on('click', 'places', function (e) {
        var coordinates = e.features[0].geometry.coordinates.slice();
        var description = e.features[0].properties.description;

        // Ensure that if the map is zoomed out such that multiple
        // copies of the feature are visible, the popup appears
        // over the copy being pointed to.
        while (Math.abs(e.lngLat.lng - coordinates[0]) > 180) {
            coordinates[0] += e.lngLat.lng > coordinates[0] ? 360 : -360;
        }

        new mapboxgl.Popup()
            .setLngLat(coordinates)
            .setHTML(description)
            .addTo(map);
    });

    // Change the cursor to a pointer when the mouse is over the places layer.
    map.on('mouseenter', 'places', function () {
        map.getCanvas().style.cursor = 'pointer';
    });

    // Change it back to a pointer when it leaves.
    map.on('mouseleave', 'places', function () {
        map.getCanvas().style.cursor = '';
    });
});

</script>

</body>
</html>

