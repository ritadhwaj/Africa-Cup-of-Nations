<%-- 
    Document   : mapbox2
    Created on : 11 Aug, 2018, 3:03:31 PM
    Author     : 06rit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8' />
    <title>2013 map navigation controls</title>
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
    center: [25.00000000, -30.00000000], // starting position
    zoom: 4 // starting zoom
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
                        "description": "<strong>FNB Stadium</strong><p>First National Bank Stadium or simply FNB Stadium, also known as Soccer City and The Calabash, is a stadium located in Nasrec, bordering the Soweto area of Johannesburg, South Africa. The venue is managed by Stadium Management South Africa (SMSA) and is a home ground of Kaizer Chiefs F.C. in the South African Premier Soccer League as well as key fixtures for the South African national football team (Bafana Bafana). Capacity: 94,736. <br><img src=\"images/FNB Stadium.jpg\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [27.98222222, -26.23479722]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Johannesburg</strong><p>Johannesburg is the largest city in South Africa and one of the 50 largest urban areas in the world. It is the provincial capital and largest city of Gauteng, which is the wealthiest province in South Africa. While Johannesburg is not one of South Africa's three capital cities, it is the seat of the Constitutional Court. The city is located in the mineral-rich Witwatersrand range of hills and is the centre of large-scale gold and diamond trade.<br><img src=\"images/Johannesburg.jpg\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [28.04555556, -26.20444444]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Moses Mabhida Stadium</strong><p>The Moses Mabhida Stadium is a stadium in Durban, South Africa, named after Moses Mabhida, a former General Secretary of the South African Communist Party. It is a multi-use stadium. The stadium became a venue for several events, like bungee jumping, concerts, cricket, football, golf practice, motorsports and rugby union. It was one of the host stadiums for the 2010 FIFA World Cup. The stadium has a capacity of 62,760. The stadium is adjacent to the Kings Park Stadium, in the Kings Park Sporting Precinct, and the Durban street circuit used for the A1GP World Cup of Motorsport. It includes a sports institute, and a transmodal transport station.<br><img src=\"images/Moses Mabhida Stadium.jpg\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [31.03027778, -29.82888889]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Durban</strong><p>Durban  is the third most populous city in South Africa—after Johannesburg and Cape Town—and the largest city in the South African province of KwaZulu-Natal. Located on the east coast of South Africa, Durban is famous for being the busiest port in the country. It is also seen as one of the major centres of tourism because of the city's warm subtropical climate and extensive beaches. Durban forms part of the eThekwini Metropolitan Municipality, which includes neighboring towns and has a population of about 3.44 million, making the combined municipality one of the biggest cities on the Indian Ocean coast of the African continent. It is also the second most important manufacturing hub in South Africa after Johannesburg. It has the highest number of dollar millionaires added per year of any South African city with the number rising 200 per cent between 2000 and 2014. In May 2015, Durban was officially recognised as one of the New7Wonders Cities together with Vigan, Doha, La Paz, Havana, Beirut, and Kuala Lumpur.<br><img src=\"images/Durban.jpg\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [31.05000000, -29.88333333]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Nelson Mandela Bay Stadium</strong><p>The Nelson Mandela Bay Stadium is a 46,000-seater stadium in Port Elizabeth, Eastern Cape, South Africa. The five-tier, R2 billion (approximately $159 million) Nelson Mandela Bay Stadium was built overlooking the North End Lake, at the heart of the city. It is one of three coastal stadiums built to host the 2010 FIFA World Cup. It regularly hosts large-scale rugby union and football (soccer) matches. The stadium has also been used as a concert venue. Capacity: 42,486. <br><img src=\"images/Nelson Mandela Stadium.jpg\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [25.59888889, -33.93777778]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Port Elizabeth</strong><p>Port Elizabeth or The Bay  is one of the major cities in South Africa; it is situated in the Eastern Cape Province, 770 km (478 mi) east of Cape Town. The city, often shortened to PE and nicknamed \"The Friendly City\" or \"The Windy City\", stretches for 16 km along Algoa Bay, and is one of the major seaports in South Africa. Port Elizabeth is the southernmost large city on the African continent, just farther south than Cape Town. Port Elizabeth was founded as a town in 1820 to house British settlers as a way of strengthening the border region between the Cape Colony and the Xhosa. It now forms part of the Nelson Mandela Bay Metropolitan Municipality, which has a population of over 1.3 million.<br><img src=\"images/Port Elizabeth.jpg\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [25.60000000, -33.95805556]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Mbombela Stadium</strong><p>The Mbombela Stadium is an all-seater, 40,929-seat stadium and was one of the ten venues for the FIFA World Cup 2010. It is located on open land six kilometres west of Mbombela, South Africa, the capital of the Mpumalanga province. The stadium has the same name as Nelspruit's new name. In October 2009, Nelspruit was officially renamed Mbombela by the South African government. However, FIFA's 2010 World Cup web site refers to the city as \"Nelspruit.\" Capacity: 40,929.<br><img src=\"images/Mbombela Stadium.jpg\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [30.92888889, -25.46111111]
                    }
                }, {
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Nelspruit</strong><p>Mbombela, also known by its former name, Nelspruit, is a city in northeastern South Africa. It is the capital of the Mpumalanga province. Located on the Crocodile River, Mbombela lies about 110 kilometres (68 mi) by road west of the Mozambique border, 330 kilometres (210 mi) east of Johannesburg and about 82 kilometres (51 mi) North of the Swaziland border. <br><img src=\"images/Nelspruit.JPG\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [30.98527778, -25.46583333]
                    }
                },{
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Royal Bafokeng Stadium</strong><p>The Royal Bafokeng Sports Palace is a football, rugby and athletics stadium in Phokeng near Rustenburg, South Africa. It was built and is managed by the Royal Bafokeng Nation.[2] It is used as the home stadium for Premier Soccer League club Platinum Stars. The Leopards rugby team host large attendance matches during the Currie Cup at the stadium, instead of their usual home ground, Olën Park. The capacity of the stadium was increased from 38,000 to 42,000 to be able to host five first round matches and one second round match at the 2010 FIFA World Cup.<br><img src=\"images/Royal Bafokeng Stadium.jpg\"></p>",
                        "icon": "stadium"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [27.16083333, -25.57861111]
                    }
                },{
                    "type": "Feature",
                    "properties": {
                        "description": "<strong>Rustenburg</strong><p>Rustenburg is a city at the foot of the Magaliesberg mountain range in North West Province of South Africa. It was one of the official host cities of the 2010 FIFA World Cup, being in close proximity to Phokeng, the capital of the Royal Bafokeng Nation, where the Royal Bafokeng Stadium is located. The England national football team also used this as their base camp for the tournament.<br><img src=\"images/Rustenburg.jpg\"></p>",
                        "icon": "star"
                    },
                    "geometry": {
                        "type": "Point",
                        "coordinates": [27.25000000, -25.66666667]
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