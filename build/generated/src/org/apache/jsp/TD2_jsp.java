package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class TD2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>2013 CAF Tournament Details</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <center>\n");
      out.write("        <h1>Tournament Details</h1>\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr><th>Host Countries</th><td>South Africa</td></tr>\n");
      out.write("            <tr><th>Dates</th><td>19 January - 10 February</td></tr>\n");
      out.write("            <tr><th>Teams</th><td>16(1 from confederation)</td></tr>\n");
      out.write("            <tr><th>Venues</th><td>5(in 5 host cities)</td></tr>\n");
      out.write("        </table>\n");
      out.write("        <h2>Final Positions</h2>\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr><th>Champions</th><td>Nigeria (3rd Title)</td></tr>\n");
      out.write("            <tr><th>Runners-up</th><td>Burkina Faso</td></tr>\n");
      out.write("            <tr><th>Third Place</th><td>Mali</td></tr>\n");
      out.write("            <tr><th>Fourth Place</th><td>Ghana</td></tr>\n");
      out.write("        </table>\n");
      out.write("        <h3>Tournament Statistics</h3>\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr><th>Matches Played</th><td>32</td></tr>\n");
      out.write("            <tr><th>Goals Scored</th><td>69 (2.16 per match)</td></tr>\n");
      out.write("            <tr><th>Attendance</th><td>729,000 (22,781 per match)</td></tr>\n");
      out.write("            <tr><th>Top Scorer(s)</th><td> Emmanuel Emenike<br> Wakaso Mubarak<br>(4 Goals each)</td></tr>\n");
      out.write("            <tr><th>Best Player</th><td> Jonathan Pitroipa</td></tr>\n");
      out.write("        </table>\n");
      out.write("        <form action=\"mapbox2.jsp\">\n");
      out.write("            <input type=\"submit\" value=\"Mapview\"/>\n");
      out.write("        </form>\n");
      out.write("        <form action=\"first.jsp\">\n");
      out.write("            <input type=\"submit\" value=\"Back\"/>\n");
      out.write("        </form>\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
