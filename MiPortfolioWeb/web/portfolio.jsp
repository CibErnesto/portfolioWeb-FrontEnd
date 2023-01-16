

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html lang="en">
 
  <head>
    
    
    <!-- Required meta tags -->

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width,initial-scale=1">

    <!-- Bootstrap CSS -->

    <link href="C:\Users\ggrak\Desktop\Argentina programa files\bootstrap-5.0.1-dist\css\bootstrap.min.css" rel="stylesheet">

    <title>GERMAN RACCA</title>
    
   
    <link rel="stylesheet" href="css\estilos.css">
    
    <style>
     
    img {
      
      display: block;
      margin-left: auto;
      margin-right: auto;
      border-radius: 8px;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }
    
    header {
      background: rgba(0,0,0,0.7);
      width: 100%;
      position: fixed;
      z-index: 100;
    }
   
    nav {
      float: left;
    }

    nav ul {
      list-style: none;
      overflow: hidden; 
    }

    nav ul li {
      float: left;
      font-family: Arial, Helvetica, sans-serif;;
      font-size: 20px;
    }  
    nav ul li a {
      display: block; 
      padding: 20px;
      color: #fff;
      text-decoration: none;
    }

    nav ul li:hover {
       background: orange;
    }
    
    h1{
      margin-left: 18%;
      margin-right: auto;
      margin-top: 60%;
      color: green;
      font-size: 60px;
     }

     h4{
     
      color: green;
      margin-left: 30%;
      font-size: 30px;
     }
    </style>
    
  </head>
  
  <body>
  
     
    
    <div id="preloader">
     
      <nav>
         
        <ul>
          
          <li><a href="datosPersonales.jsp">Datos Personales</a></li>
         
          <li><a href="excusas.jsp">Trabajos</a></li>
          <li><a href="#">Cursos</a></l>
          <li><a href="#">Contacto</a></li>
        </ul>
            
      </nav>
        
      <canvas id="canvasMatrix"></canvas>
          
      
      <div id="loader"> 
          
        
        <img src="img/programing2-1.jpeg" alt="">
        <h4> GERMAN RACCA </h4>
           
         
      </div>
     
    </div>
    <canvas id="canvasMatrix"></canvas>
    <canvas id="canvasMatrix"></canvas>
    <canvas id="canvasMatrix"></canvas>
    <canvas id="canvasMatrix"></canvas>
    <canvas id="canvasMatrix"></canvas>
    <canvas id="canvasMatrix"></canvas><
    <canvas id="canvasMatrix"></canvas>
    <canvas id="canvasMatrix"></canvas>
    <canvas id="canvasMatrix"></canvas>
    <canvas id="canvasMatrix"></canvas>
    <canvas id="canvasMatrix"></canvas>
    <canvas id="canvasMatrix"></canvas>
    <canvas id="canvasMatrix"></canvas>
    <canvas id="canvasMatrix"></canvas>
    <canvas id="canvasMatrix"></canvas>
    
  </body>  
    
  
    <!-- Bootstrap JS -->
  
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"></script>
    // "C:\Users\ggrak\Desktop\Argentina programa files\bootstrap-5.0.1-dist\js\bootstrap.bundle.min.js"
    
<script src="js\matrixJS.js"></script>
 
<script> 
 
  // Get the canvas node and the drawing context
const canvas = document.getElementById('canvasMatrix');
const ctx = canvas.getContext('2d');

// set the width and height of the canvas
const w = canvas.width = document.body.offsetWidth;
const h = canvas.height = document.body.offsetHeight;



// draw a black rectangle of width and height same as that of the canvas
ctx.fillStyle = '#000';
ctx.fillRect(0, 0, w, h);

const cols = Math.floor(w / 20) + 1;
const ypos = Array(cols).fill(0);

function matrix () {
	// Draw a semitransparent black rectangle on top of previous drawing
	ctx.fillStyle = '#0001';
	ctx.fillRect(0, 0, w, h);

	// Set color to green and font to 15pt monospace in the drawing context
	ctx.fillStyle = '#0f0';
	ctx.font = '20pt monospace';

	// for each column put a random character at the end
	ypos.forEach((y, ind) => {
		// generate a random character
		const text = String.fromCharCode(Math.random() * 122);

		// x coordinate of the column, y coordinate is already given
		const x = ind * 20;
		// render the character at (x, y)
		ctx.fillText(text, x, y);

		// randomly reset the end of the column if it's at least 100px high
		if (y > 100 + Math.random() * 10000) ypos[ind] = 0;
		// otherwise just move the y coordinate for the column 20px down,
		else ypos[ind] = y + 20;
	});
}

// render the animation at 20 FPS.
setInterval(matrix, 50);

</script>

</html>


