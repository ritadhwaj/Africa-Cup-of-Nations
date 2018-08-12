<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
             body{
            
             background-image: url(images/index.jpg);
       overflow:hidden;
    /* Full height*/
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
               
                   font-size: 3em;
    text-align: center;
    color: white;
    margin-top: 19%;
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
        left:42%;
    }
            
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>CAF</title>
    </head>
    <body>
        <h1>Africa Cup of Nations</h1>
        <div>
        <form action="first.jsp">
            <input type="submit" value="Arena Of Football"/>
        </form>
        </div>        

    </body>
</html>
