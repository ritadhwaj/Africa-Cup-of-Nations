package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mapbox1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>2015 map navigation controls</title>\n");
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
      out.write("    center: [10.00000000, 1.50000000], // starting position\n");
      out.write("    zoom: 6 // starting zoom\n");
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
      out.write("                        \"description\": \"<strong>Estadio de Bata</strong><p>Estadio de Bata is a multi-use stadium in Bata, Equatorial Guinea. The stadium was constructed by the Chinese contractor Covec and completed in 2007 with a capacity of 22,000 people in a single tier pre-cast concrete structure. It was a venue for the 2008 Women's African Football Championship. It was expanded in 2011 with a new steel substructure upper tier to a 35,000 capacity as one of the host stadiums for the 2012 Africa Cup of Nations including the opening ceremony and semi-final matches. The stadium is located about 5 kilometers from the coast and adjacent to a sport complex currently under construction which features an indoor sports hall, covered swimming pool, hotel and most main sporting codes.<br><img src=\\\"images/Estadio de Bata.jpg\\\"></p>\",\n");
      out.write("                        \"icon\": \"stadium\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [9.788149, 1.823117]\n");
      out.write("                    }\n");
      out.write("                }, {\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>Bata, Equatorial Guinea</strong><p>Bata, is a port city in the Litoral province of Equatorial Guinea. With a 2005 estimated population of 173,046, it is the largest city in Equatorial Guinea. It lies on the Atlantic Ocean coast of Río Muni. Bata was formerly capital of Equatorial Guinea and is a transport hub and port, from which ferries sail to Malabo and Douala, while fliers can land at Bata Airport. Bata is also known for its nightlife and market.<br><img src=\\\"images/Bata.jpg\\\"></p>\",\n");
      out.write("                        \"icon\": \"star\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [9.75000000, 1.85000000]\n");
      out.write("                    }\n");
      out.write("                }, {\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>Nuevo Estadio de Malabo</strong><p>Estadio de Malabo is a multi-purpose stadium in Malabo, Equatorial Guinea. It is currently used mostly for football matches. The stadium holds 15,250 and opened in 2007. It is currently the home ground of the Equatorial Guinea national football team. One of the host stadiums for the 2012 Africa Cup of Nations, it hosted the final of the Women's African Nations Football cup in 2008. Equatoguinean Premier League sides Atlético Malabo, Atlético Semu, Deportivo Unidad, Sony Elá Nguema, The Panthers and Vegetarianos all play their league games at this stadium. <br><img src=\\\"images/Estadio de Malabo.JPG\\\"></p>\",\n");
      out.write("                        \"icon\": \"stadium\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [8.76916667, 3.72500000]\n");
      out.write("                    }\n");
      out.write("                }, {\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>Malabo</strong><p>Malabo,  is the capital of Equatorial Guinea and the province of Bioko Norte. It is located on the north coast of the island of Bioko, formerly known by the Bubis, its indigenous inhabitants, as Etulá, and as Fernando Pó by the Europeans. The city has a population of approximately 187,302 inhabitants. Spanish is the official language of the city and of the country as well. Spanish is the most-spoken language and practically the only one used, except some French and Portuguese. <br><img src=\\\"images/Malabo.jpg\\\"></p>\",\n");
      out.write("                        \"icon\": \"star\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [8.78333333, 3.75000000]\n");
      out.write("                    }\n");
      out.write("                }, {\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>Estadio de Mongomo</strong><p>The Estadio de Mongomo is a multi-sport stadium in Mongomo, Equatorial Guinea. In November 2014, it was announced the stadium will be a venue for the 2015 Africa Cup of Nations. Capacity: 15,000. <br><img src=\\\"images/Stade-Mongomo.jpg\\\"></p>\",\n");
      out.write("                        \"icon\": \"stadium\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [11.29916667, 1.65111111]\n");
      out.write("                    }\n");
      out.write("                }, {\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>Mongomo</strong><p>Mongomo is a town in the province of Wele-Nzas on mainland Equatorial Guinea, on the eastern border, roughly 1 km (0.62 mi) west of Gabon's Woleu-Ntem Province. Mongomo was named a host city of the 2015 African Cup of Nations. <br><img src=\\\"images/Mongomo.jpg\\\"></p>\",\n");
      out.write("                        \"icon\": \"star\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [11.31666667, 1.62861111]\n");
      out.write("                    }\n");
      out.write("                }, {\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>Nuevo Estadio de Ebebiyín</strong><p>The Neuvo Estadio de Ebebiyín is a multi-sports stadium in Ebebiyín, Equatorial Guinea. In October 2014, the stadium hosted the Copa de la Primera Dama final. In November 2014, it was announced the stadium would be a venue of the 2015 Africa Cup of Nations. Capacity:8,000. <br><img src=\\\"images/Nuevo Estadio de Ebebiyin.png\\\"></p>\",\n");
      out.write("                        \"icon\": \"stadium\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [11.31194444, 2.14111111]\n");
      out.write("                    }\n");
      out.write("                }, {\n");
      out.write("                    \"type\": \"Feature\",\n");
      out.write("                    \"properties\": {\n");
      out.write("                        \"description\": \"<strong>Ebebiyín</strong><p>Ebebiyín is a town in the northeastern corner of mainland Equatorial Guinea. It is the capital of the province of Kié-Ntem. t lies on the three-party border between Equatorial Guinea, Gabon and Cameroon. It is the end point of three main transport routes coming from Bata, Yaoundé and major cities in central Gabon. It is also the capital of the Kié-Ntem Province. <br><img src=\\\"images/Ebebiyin.png\\\"></p>\",\n");
      out.write("                        \"icon\": \"star\"\n");
      out.write("                    },\n");
      out.write("                    \"geometry\": {\n");
      out.write("                        \"type\": \"Point\",\n");
      out.write("                        \"coordinates\": [11.31666667, 2.15000000]\n");
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
      out.write("</html>\n");
      out.write("\n");
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
