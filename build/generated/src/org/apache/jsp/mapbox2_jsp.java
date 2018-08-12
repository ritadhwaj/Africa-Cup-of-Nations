package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mapbox2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta charset='utf-8' />\n");
      out.write("    <title>2013 map navigation controls</title>\n");
      out.write("    <meta name='viewport' content='initial-scale=1,maximum-scale=1,user-scalable=no' />\n");
      out.write("    <script src='https://api.tiles.mapbox.com/mapbox-gl-js/v0.47.0/mapbox-gl.js'></script>\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("    <link href='https://api.tiles.mapbox.com/mapbox-gl-js/v0.47.0/mapbox-gl.css' rel='stylesheet' />\n");
      out.write("    <style>\n");
      out.write("        body { margin:0; padding:0; }\n");
      out.write("        #map { position:absolute; top:0; bottom:0; width:100%; }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<style>\n");
      out.write("    .mapboxgl-popup {\n");
      out.write("        max-width: 400px;\n");
      out.write("        font: 12px/20px 'Helvetica Neue', Arial, Helvetica, sans-serif;\n");
      out.write("    }\n");
      out.write("    #menu {\n");
      out.write("        position: absolute;\n");
      out.write("        background: #fff;\n");
      out.write("        padding: 10px;\n");
      out.write("        font-family: 'Open Sans', sans-serif;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<div id='map'></div>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("mapboxgl.accessToken = 'pk.eyJ1Ijoicml0YWRod2FqIiwiYSI6ImNqa2w1NG8yZzF4Zmczdm54b21ta3lhOWwifQ.2St8DwubnG-lWeVlKOKo_w';\n");
      out.write("var map = new mapboxgl.Map({\n");
      out.write("    container: 'map', // container id\n");
      out.write("    style: 'mapbox://styles/mapbox/streets-v9',\n");
      out.write("    center: [25.00000000, -30.00000000], // starting position\n");
      out.write("    zoom: 4 // starting zoom\n");
      out.write("});\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("// Add zoom and rotation controls to the map.\n");
      out.write("map.addControl(new mapboxgl.NavigationControl());\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("map.on('load', function () {\n");
      out.write("    // Add a layer showing the places.\n");
      out.write("    map.addLayer({\n");
      out.write("        \"id\": \"places\",\n");
      out.write("        \"type\": \"symbol\",\n");
      out.write("        \"source\": {\n");
      out.write("            \"type\": \"geojson\",\n");
      out.write("            \"data\": {\n");
      out.write("                \"type\": \"FeatureCollection\",\n");
      out.write("                \"features\": [{\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>FNB Stadium</strong><p>First National Bank Stadium or simply FNB Stadium, also known as Soccer City and The Calabash, is a stadium located in Nasrec, bordering the Soweto area of Johannesburg, South Africa. The venue is managed by Stadium Management South Africa (SMSA) and is a home ground of Kaizer Chiefs F.C. in the South African Premier Soccer League as well as key fixtures for the South African national football team (Bafana Bafana). Capacity: 94,736. <br><img src=\\\"images/FNB Stadium.jpg\\\"></p>\",\n");
      out.write("                        \"icon\": \"stadium\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [27.98222222, -26.23479722]\n");
      out.write("                    }\n");
      out.write("                }, {\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>Johannesburg</strong><p>Johannesburg is the largest city in South Africa and one of the 50 largest urban areas in the world. It is the provincial capital and largest city of Gauteng, which is the wealthiest province in South Africa. While Johannesburg is not one of South Africa's three capital cities, it is the seat of the Constitutional Court. The city is located in the mineral-rich Witwatersrand range of hills and is the centre of large-scale gold and diamond trade.<br><img src=\\\"images/Johannesburg.jpg\\\"></p>\",\n");
      out.write("                        \"icon\": \"star\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [28.04555556, -26.20444444]\n");
      out.write("                    }\n");
      out.write("                }, {\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>Moses Mabhida Stadium</strong><p>The Moses Mabhida Stadium is a stadium in Durban, South Africa, named after Moses Mabhida, a former General Secretary of the South African Communist Party. It is a multi-use stadium. The stadium became a venue for several events, like bungee jumping, concerts, cricket, football, golf practice, motorsports and rugby union. It was one of the host stadiums for the 2010 FIFA World Cup. The stadium has a capacity of 62,760. The stadium is adjacent to the Kings Park Stadium, in the Kings Park Sporting Precinct, and the Durban street circuit used for the A1GP World Cup of Motorsport. It includes a sports institute, and a transmodal transport station.<br><img src=\\\"images/Moses Mabhida Stadium.jpg\\\"></p>\",\n");
      out.write("                        \"icon\": \"stadium\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [31.03027778, -29.82888889]\n");
      out.write("                    }\n");
      out.write("                }, {\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>Durban</strong><p>Durban  is the third most populous city in South Africa—after Johannesburg and Cape Town—and the largest city in the South African province of KwaZulu-Natal. Located on the east coast of South Africa, Durban is famous for being the busiest port in the country. It is also seen as one of the major centres of tourism because of the city's warm subtropical climate and extensive beaches. Durban forms part of the eThekwini Metropolitan Municipality, which includes neighboring towns and has a population of about 3.44 million, making the combined municipality one of the biggest cities on the Indian Ocean coast of the African continent. It is also the second most important manufacturing hub in South Africa after Johannesburg. It has the highest number of dollar millionaires added per year of any South African city with the number rising 200 per cent between 2000 and 2014. In May 2015, Durban was officially recognised as one of the New7Wonders Cities together with Vigan, Doha, La Paz, Havana, Beirut, and Kuala Lumpur.<br><img src=\\\"images/Durban.jpg\\\"></p>\",\n");
      out.write("                        \"icon\": \"star\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [31.05000000, -29.88333333]\n");
      out.write("                    }\n");
      out.write("                }, {\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>Nelson Mandela Bay Stadium</strong><p>The Nelson Mandela Bay Stadium is a 46,000-seater stadium in Port Elizabeth, Eastern Cape, South Africa. The five-tier, R2 billion (approximately $159 million) Nelson Mandela Bay Stadium was built overlooking the North End Lake, at the heart of the city. It is one of three coastal stadiums built to host the 2010 FIFA World Cup. It regularly hosts large-scale rugby union and football (soccer) matches. The stadium has also been used as a concert venue. Capacity: 42,486. <br><img src=\\\"images/Nelson Mandela Stadium.jpg\\\"></p>\",\n");
      out.write("                        \"icon\": \"stadium\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [25.59888889, -33.93777778]\n");
      out.write("                    }\n");
      out.write("                }, {\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>Port Elizabeth</strong><p>Port Elizabeth or The Bay  is one of the major cities in South Africa; it is situated in the Eastern Cape Province, 770 km (478 mi) east of Cape Town. The city, often shortened to PE and nicknamed \\\"The Friendly City\\\" or \\\"The Windy City\\\", stretches for 16 km along Algoa Bay, and is one of the major seaports in South Africa. Port Elizabeth is the southernmost large city on the African continent, just farther south than Cape Town. Port Elizabeth was founded as a town in 1820 to house British settlers as a way of strengthening the border region between the Cape Colony and the Xhosa. It now forms part of the Nelson Mandela Bay Metropolitan Municipality, which has a population of over 1.3 million.<br><img src=\\\"images/Port Elizabeth.jpg\\\"></p>\",\n");
      out.write("                        \"icon\": \"star\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [25.60000000, -33.95805556]\n");
      out.write("                    }\n");
      out.write("                }, {\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>Mbombela Stadium</strong><p>The Mbombela Stadium is an all-seater, 40,929-seat stadium and was one of the ten venues for the FIFA World Cup 2010. It is located on open land six kilometres west of Mbombela, South Africa, the capital of the Mpumalanga province. The stadium has the same name as Nelspruit's new name. In October 2009, Nelspruit was officially renamed Mbombela by the South African government. However, FIFA's 2010 World Cup web site refers to the city as \\\"Nelspruit.\\\" Capacity: 40,929.<br><img src=\\\"images/Mbombela Stadium.jpg\\\"></p>\",\n");
      out.write("                        \"icon\": \"stadium\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [30.92888889, -25.46111111]\n");
      out.write("                    }\n");
      out.write("                }, {\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>Nelspruit</strong><p>Mbombela, also known by its former name, Nelspruit, is a city in northeastern South Africa. It is the capital of the Mpumalanga province. Located on the Crocodile River, Mbombela lies about 110 kilometres (68 mi) by road west of the Mozambique border, 330 kilometres (210 mi) east of Johannesburg and about 82 kilometres (51 mi) North of the Swaziland border. <br><img src=\\\"images/Nelspruit.JPG\\\"></p>\",\n");
      out.write("                        \"icon\": \"star\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [30.98527778, -25.46583333]\n");
      out.write("                    }\n");
      out.write("                },{\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>Royal Bafokeng Stadium</strong><p>The Royal Bafokeng Sports Palace is a football, rugby and athletics stadium in Phokeng near Rustenburg, South Africa. It was built and is managed by the Royal Bafokeng Nation.[2] It is used as the home stadium for Premier Soccer League club Platinum Stars. The Leopards rugby team host large attendance matches during the Currie Cup at the stadium, instead of their usual home ground, Olën Park. The capacity of the stadium was increased from 38,000 to 42,000 to be able to host five first round matches and one second round match at the 2010 FIFA World Cup.<br><img src=\\\"images/Royal Bafokeng Stadium.jpg\\\"></p>\",\n");
      out.write("                        \"icon\": \"stadium\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [27.16083333, -25.57861111]\n");
      out.write("                    }\n");
      out.write("                },{\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>Rustenburg</strong><p>Rustenburg is a city at the foot of the Magaliesberg mountain range in North West Province of South Africa. It was one of the official host cities of the 2010 FIFA World Cup, being in close proximity to Phokeng, the capital of the Royal Bafokeng Nation, where the Royal Bafokeng Stadium is located. The England national football team also used this as their base camp for the tournament.<br><img src=\\\"images/Rustenburg.jpg\\\"></p>\",\n");
      out.write("                        \"icon\": \"star\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [27.25000000, -25.66666667]\n");
      out.write("                    }\n");
      out.write("                }]\n");
      out.write("            }\n");
      out.write("        },\n");
      out.write("        \"layout\": {\n");
      out.write("            \"icon-image\": \"{icon}-15\",\n");
      out.write("            \"icon-allow-overlap\": true\n");
      out.write("        }\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    // When a click event occurs on a feature in the places layer, open a popup at the\n");
      out.write("    // location of the feature, with description HTML from its properties.\n");
      out.write("    map.on('click', 'places', function (e) {\n");
      out.write("        var coordinates = e.features[0].geometry.coordinates.slice();\n");
      out.write("        var description = e.features[0].properties.description;\n");
      out.write("\n");
      out.write("        // Ensure that if the map is zoomed out such that multiple\n");
      out.write("        // copies of the feature are visible, the popup appears\n");
      out.write("        // over the copy being pointed to.\n");
      out.write("        while (Math.abs(e.lngLat.lng - coordinates[0]) > 180) {\n");
      out.write("            coordinates[0] += e.lngLat.lng > coordinates[0] ? 360 : -360;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        new mapboxgl.Popup()\n");
      out.write("            .setLngLat(coordinates)\n");
      out.write("            .setHTML(description)\n");
      out.write("            .addTo(map);\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    // Change the cursor to a pointer when the mouse is over the places layer.\n");
      out.write("    map.on('mouseenter', 'places', function () {\n");
      out.write("        map.getCanvas().style.cursor = 'pointer';\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    // Change it back to a pointer when it leaves.\n");
      out.write("    map.on('mouseleave', 'places', function () {\n");
      out.write("        map.getCanvas().style.cursor = '';\n");
      out.write("    });\n");
      out.write("});\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
