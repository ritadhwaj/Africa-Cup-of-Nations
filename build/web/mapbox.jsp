<%-- 
    Document   : mapbox
    Created on : 8 Aug, 2018, 7:48:19 PM
    Author     : 06rit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8' />
    <title>2017 map navigation controls</title>
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
<!--<div id='menu'>
    <input id='basic' type='radio' name='rtoggle' value='basic' checked='checked'>
    <label for='basic'>basic</label>
    <input id='streets' type='radio' name='rtoggle' value='streets'>
    <label for='streets'>streets</label>
    <input id='bright' type='radio' name='rtoggle' value='bright'>
    <label for='bright'>bright</label>
    <input id='light' type='radio' name='rtoggle' value='light'>
    <label for='light'>light</label>
    <input id='dark' type='radio' name='rtoggle' value='dark'>
    <label for='dark'>dark</label>
    <input id='satellite' type='radio' name='rtoggle' value='satellite'>
    <label for='satellite'>satellite</label>
</div>-->
<script>
mapboxgl.accessToken = 'pk.eyJ1Ijoicml0YWRod2FqIiwiYSI6ImNqa2w1NG8yZzF4Zmczdm54b21ta3lhOWwifQ.2St8DwubnG-lWeVlKOKo_w';
var map = new mapboxgl.Map({
    container: 'map', // container id
    style: 'mapbox://styles/mapbox/streets-v9',
    center: [11.6094, -0.8037], // starting position
    zoom: 5 // starting zoom
});

//var layerList = document.getElementById('menu');
//var inputs = layerList.getElementsByTagName('input');

// Add zoom and rotation controls to the map.
map.addControl(new mapboxgl.NavigationControl());

/*function switchLayer(layer) {
    var layerId = layer.target.id;
    map.setStyle('mapbox://styles/mapbox/' + layerId + '-v9');
//COPY START

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
                        "description": "<strong>Stade d'Angondjé</strong><p>The Stade d'Angondjé is a stadium in Angondjé, a suburb of Libreville in Gabon. It is referred to as Stade de l'Amitié. The stadium build was expected to take 20 months and was funded by the Gabonese and Chinese governments. Capacity:40000<br><img src=\"images/Stade dAngondje.jpg\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [9.39777778, 0.52416667]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Libreville</strong><p>Libreville is the capital and largest city of Gabon, in western central Africa. The city is a port on the Komo River, near the Gulf of Guinea, and a trade center for a timber region. As of 2013 its census population was 703,904.Libreville features a tropical monsoon climate with a lengthy wet season and a short dry season.<br><img src=\"images/Libreville.jpg\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [9.45000000, 0.39000000]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Stade de Franceville</strong><p>The Stade de Franceville is a stadium in Franceville, Gabon. The 22,000 capacity stadium was opened in January 2012, in time for its use in the 2012 African Cup of Nations. The opening game was a friendly between Gabon and Sudan.<br><img src=\"images/Stade de Franceville.jpg\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [13.40777778, -1.63861111]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Franceville</strong><p>Franceville is one of the four largest cities in Gabon, with a population of around 110,568 (2013 census) people. It lies on the River Mpassa and at the end of the Trans-Gabon Railway and the N3 road. It grew from a village named Masuku when Pierre Savorgnan de Brazza chose it to resettle former slaves and renamed it \"Francheville\" (meaning \"city of the freed\" in French) in 1880. The city later came to be called Franceville.<br><img src=\"images/franceville.jpg\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [13.58333333, -1.63333333]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Stade d'Oyem</strong><p>The Stade d'Oyem is a stadium in Oyem, Gabon. This 20,500 capacity stadium opened for use in the 2017 Africa Cup of Nations.<br><img src=\"images/Stade d'Oyem.jpg\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [11.64500000, 1.70660000]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Oyem</strong><p>Oyem is the capital of Woleu-Ntem province in northern Gabon, lying on the N2 road and the River Ntem. The town lies on a plateau at an elevation of about 3,000 feet (910 m). It is the administrative and transport center for the surrounding agricultural area. Oyem is located 411 kilometers away from the national capital, Libreville.<br><img src=\"images/oyem.jpg\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [11.56666667, 1.60000000]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Stade de Port-Gentil</strong><p>The Stade de Port-Gentil is a stadium in Port-Gentil, Gabon. This 20,000 capacity stadium opened in time for its use in the 2017 Africa Cup of Nations.<br><img src=\"images/Stade de Port-Gentil.jpg\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [8.78333333, -0.71666667]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Port-Gentil</strong><p>Port-Gentil or Mandji is the second-largest city of Gabon, and its leading seaport. It is the center of Gabon's petroleum and timber industries. Although it lies inshore, the nearby mainland is a remote forest area and it is not connected by road to the rest of the nation. The city lies close to Cape Lopez, the westernmost point in Gabon. It had a 2013 census population of 136,462.The city centre lies next to the harbour on the Port-Gentil Bay seaside. Hotels, banks, shops, and supermarkets (such as the Casino and Cecado brands) are found within the downtown area between the Avenue Savorgnan de Brazzaville and the seaside. The area also concentrates a residential compound for foreign workforce. In the southern part, the BEAC building lies next to the port. The western Atlantic seaside is scarcely populated, mainly due to the presence of strong winds and sea currents. As is the case with other cities in Gabon, the authorities have not yet implemented house numbering in Port-Gentil, and the use of postal boxes is common.<br><img src=\"images/Port-Gentil.jpg\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [8.78750000, -0.72083333]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Truckeroo</strong><p><a href=\"http://www.truckeroodc.com/www/\" target=\"_blank\">Truckeroo</a> brings dozens of food trucks, live music, and games to half and M Street SE (across from Navy Yard Metro Station) today from 11:00 a.m. to 11:00 p.m.</p>",
                        "icon": "music"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [-77.007481, 38.876516]
                    }
                }]
            }
        },
        "layout": {
            "icon-image": "{icon}-15",
            "icon-allow-overlap": true
        }
    });
    //COPY END
}*/

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
                        "description": "<strong>Stade d'Angondjé</strong><p>The Stade d'Angondjé is a stadium in Angondjé, a suburb of Libreville in Gabon. It is referred to as Stade de l'Amitié. The stadium build was expected to take 20 months and was funded by the Gabonese and Chinese governments. Capacity:40000<br><img src=\"images/Stade dAngondje.jpg\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [9.39777778, 0.52416667]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Libreville</strong><p>Libreville is the capital and largest city of Gabon, in western central Africa. The city is a port on the Komo River, near the Gulf of Guinea, and a trade center for a timber region. As of 2013 its census population was 703,904.Libreville features a tropical monsoon climate with a lengthy wet season and a short dry season.<br><img src=\"images/Libreville.jpg\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [9.45000000, 0.39000000]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Stade de Franceville</strong><p>The Stade de Franceville is a stadium in Franceville, Gabon. The 22,000 capacity stadium was opened in January 2012, in time for its use in the 2012 African Cup of Nations. The opening game was a friendly between Gabon and Sudan.<br><img src=\"images/Stade de Franceville.jpg\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [13.40777778, -1.63861111]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Franceville</strong><p>Franceville is one of the four largest cities in Gabon, with a population of around 110,568 (2013 census) people. It lies on the River Mpassa and at the end of the Trans-Gabon Railway and the N3 road. It grew from a village named Masuku when Pierre Savorgnan de Brazza chose it to resettle former slaves and renamed it \"Francheville\" (meaning \"city of the freed\" in French) in 1880. The city later came to be called Franceville.<br><img src=\"images/franceville.jpg\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [13.58333333, -1.63333333]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Stade d'Oyem</strong><p>The Stade d'Oyem is a stadium in Oyem, Gabon. This 20,500 capacity stadium opened for use in the 2017 Africa Cup of Nations.<br><img src=\"images/Stade d'Oyem.jpg\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [11.64500000, 1.70660000]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Oyem</strong><p>Oyem is the capital of Woleu-Ntem province in northern Gabon, lying on the N2 road and the River Ntem. The town lies on a plateau at an elevation of about 3,000 feet (910 m). It is the administrative and transport center for the surrounding agricultural area. Oyem is located 411 kilometers away from the national capital, Libreville.<br><img src=\"images/oyem.jpg\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [11.56666667, 1.60000000]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Stade de Port-Gentil</strong><p>The Stade de Port-Gentil is a stadium in Port-Gentil, Gabon. This 20,000 capacity stadium opened in time for its use in the 2017 Africa Cup of Nations.<br><img src=\"images/Stade de Port-Gentil.jpg\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [8.78333333, -0.71666667]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Port-Gentil</strong><p>Port-Gentil or Mandji is the second-largest city of Gabon, and its leading seaport. It is the center of Gabon's petroleum and timber industries. Although it lies inshore, the nearby mainland is a remote forest area and it is not connected by road to the rest of the nation. The city lies close to Cape Lopez, the westernmost point in Gabon. It had a 2013 census population of 136,462.The city centre lies next to the harbour on the Port-Gentil Bay seaside. Hotels, banks, shops, and supermarkets (such as the Casino and Cecado brands) are found within the downtown area between the Avenue Savorgnan de Brazzaville and the seaside. The area also concentrates a residential compound for foreign workforce. In the southern part, the BEAC building lies next to the port. The western Atlantic seaside is scarcely populated, mainly due to the presence of strong winds and sea currents. As is the case with other cities in Gabon, the authorities have not yet implemented house numbering in Port-Gentil, and the use of postal boxes is common.<br><img src=\"images/Port-Gentil.jpg\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [8.78750000, -0.72083333]
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
/*$(document).on("click","input",function(){
    
    switchLayer(this);
  console.log("Clicked!");  
    
    
    
});*/
//for (var i = 0; i < inputs.length; i++) {
//  inputs[i].onclick = switchLayer;
//    console.log("Chnaged");
//}

</script>

</body>
</html>
