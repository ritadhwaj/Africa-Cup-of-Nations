<%-- 
    Document   : first
    Created on : 8 Aug, 2018, 7:58:12 PM
    Author     : 06rit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
body   {
    background-image: url(images/bg.jpg);

    /* Full height */
    height: 100vh; 
    overflow: hidden;
    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    font-family: arial;
    
    }
    div{
         position:relative;
        top:70%;
        left:35%;
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
    h1 {
        text-align: center;
       color:white;   
    }
    
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event Years</title>
    </head>
    <body>
        <h1>African cup of Nations</h1>
        <div>
        <form action="TD.jsp">
            <input type="submit" value="2017"/>
        </form>
        <form action="TD1.jsp">
            <input type="submit" value="2015"/>
        </form>
        <form action="TD2.jsp">
            <input type="submit" value="2013"/>
        </form>
        <form action="TD3.jsp">
            <input type="submit" value="2012"/>
        </form>
        <form action='index.jsp'>
                <input type="submit" value="Back"/>
        </form>
        </div>
        
    </body>
</html>
