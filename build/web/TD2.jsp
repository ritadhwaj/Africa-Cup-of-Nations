<%-- 
    Document   : TD2
    Created on : 12 Aug, 2018, 12:19:29 PM
    Author     : 06rit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>2013 CAF Tournament Details</title>
    </head>
    <style>
        body{
            
             background-image: url(images/table_bg.jpg);

    /* Full height */
    height: 100vh; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    font-family: arial;
        }
        th{
            background: green;
            padding: 5px;
            color:white;
        }
        tr{
            background: blue;
            padding: 5px;
            color:white;
           }
           h1,h2,h3 {
               
               color:white;
           }
           
       input {
        
        background-color: red;
        float:left;    
        margin: 30px;
        color:white;
        padding: 15px;
        box-shadow: none;
         border: none;
        font: inherit;
        cursor: pointer;
        outline: inherit;
       
    }
    div{
        
        position: relative;
        left:40%;
    }
    </style>
    <body>
        <center>
        <h1>Tournament Details</h1>
        <table border="1">
            <tr><th>Host Countries</th><td>South Africa</td></tr>
            <tr><th>Dates</th><td>19 January - 10 February</td></tr>
            <tr><th>Teams</th><td>16(1 from confederation)</td></tr>
            <tr><th>Venues</th><td>5(in 5 host cities)</td></tr>
        </table>
        <h2>Final Positions</h2>
        <table border="1">
            <tr><th>Champions</th><td>Nigeria (3rd Title)</td></tr>
            <tr><th>Runners-up</th><td>Burkina Faso</td></tr>
            <tr><th>Third Place</th><td>Mali</td></tr>
            <tr><th>Fourth Place</th><td>Ghana</td></tr>
        </table>
        <h3>Tournament Statistics</h3>
        <table border="1">
            <tr><th>Matches Played</th><td>32</td></tr>
            <tr><th>Goals Scored</th><td>69 (2.16 per match)</td></tr>
            <tr><th>Attendance</th><td>729,000 (22,781 per match)</td></tr>
            <tr><th>Top Scorer(s)</th><td> Emmanuel Emenike<br> Wakaso Mubarak<br>(4 Goals each)</td></tr>
            <tr><th>Best Player</th><td> Jonathan Pitroipa</td></tr>
        </table>
        <div>
        <form action="mapbox2.jsp">
            <input type="submit" value="Mapview"/>
        </form>
        <form action="first.jsp">
            <input type="submit" value="Back"/>
        </form>
        </div>
    </center>
    </body>
</html>
