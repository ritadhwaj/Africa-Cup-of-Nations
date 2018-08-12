<%-- 
    Document   : TD3
    Created on : 12 Aug, 2018, 11:52:20 AM
    Author     : 06rit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>2012 CAF Tournament Details</title>
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
            <tr><th>Host Countries</th><td>Gabon<br>Equatorial Guinea</td></tr>
            <tr><th>Dates</th><td>21 January - 12 February</td></tr>
            <tr><th>Teams</th><td>16(1 from confederation)</td></tr>
            <tr><th>Venues</th><td>4(in 4 host cities)</td></tr>
        </table>
        <h2>Final Positions</h2>
        <table border="1">
            <tr><th>Champions</th><td>Zambia (1st Title)</td></tr>
            <tr><th>Runners-up</th><td>Ivory Coast</td></tr>
            <tr><th>Third Place</th><td>Mali</td></tr>
            <tr><th>Fourth Place</th><td>Ghana</td></tr>
        </table>
        <h3>Tournament Statistics</h3>
        <table border="1">
            <tr><th>Matches Played</th><td>32</td></tr>
            <tr><th>Goals Scored</th><td>76 (2.38 per match)</td></tr>
            <tr><th>Attendance</th><td>456,332 (14,250 per match)</td></tr>
            <tr><th>Top Scorer(s)</th><td> Manucho<br> Pierre-Emerick Aubameyang<br> Didier Drogba<br> Cheick Diabaté<br> Houssine Kharja<br> Christopher Katongo<br> Emmanuel Mayuka<br>(3 Goals each)</td></tr>
            <tr><th>Best Player</th><td>Christopher Katongo</td></tr>
            <tr><th>Fair Play Award</th><td>Ivory Coast</td></tr>
        </table>
        <div>
        <form action="mapbox3.jsp">
            <input type="submit" value="Mapview"/>
        </form>
        <form action="first.jsp">
            <input type="submit" value="Back"/>
        </form>
        </div>
    </center>
    </body>
</html>
