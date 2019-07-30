<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Spring Boot Portfolio</title>
<style>
body{margin:0;}

.container img{position:relative;width:100%; height:760px}

#lead-content {position:absolute;z-index:10;left:50%;top:50%;transform:translate(-50%, -50%);text-align:center}
#links a{text-decoration: none; padding: 14px 25px; text-align: center; display:inline-block;font-size:20px;color:#a0cfee}
#lead-content h1{color:#a0cfee;font-weight:900;font-size:5em;text-transform:uppercase;letter-spacing:0.05em;line-height:2%}
#lead-content h2{color:#a0cfee;font-weight:500;font-size:3em;margin-bottom:2px}
.btn-rounded {background-color: #a0cfee;border: none; color: white; padding: 20px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px; border-radius: 12px;}
.btn-rounded:hover{color:#808080;background:#fff;text-decoration:none}




#education {padding:75px 15px;border-bottom:1px solid #dcd9d9;background-color: #ffff;text-align:center}
#education h2{color:#374054;text-align:center}
#img1 {position: absolute; width:10%;height:20%;left:20%;}
#img2 {position: absolute; width:10%;height:20%;left:65%;}
#education h3{color:#374054;}
#education h4{color:#74808a}



#experience {padding:30px 10px;border-bottom:1px solid #dcd9d9;background-color: #f1f2f3}
#experience h2{color:#374054;text-align:center}
#experience h3{color:#374054;}
#experience h4{color:#74808a}
#experience ul{ color:#74808a;margin:0;font-weight: 400}


#skills {padding:30px 10px;border-bottom:1px solid #dcd9d9;text-align:center;background-color: #fff}
#skills h2{color:#374054;margin-bottom:50px}
#skills ul{display:block;margin:0 auto;padding:0;max-width:800px}
#skills li{display:inline-block;margin:7px;padding:5px 10px;color:#374054;background:#f1f2f3;list-style:none;cursor:default;font-size:1.2em}

#courses {padding:30px 10px;border-bottom:1px solid #dcd9d9;text-align:center;background-color: #f1f2f3}
#courses h2{color:#374054;margin-bottom:50px}
#courses ul{display:block;margin:0 auto;padding:0;max-width:800px}
#courses li{display:inline-block;margin:7px;padding:5px 10px;color:#374054;background:#fff;list-style:none;cursor:default;font-size:1.2em}

#contact {padding:30px 10px;border-bottom:1px solid #dcd9d9;text-align:center;background-color: #fff}
#contact h2{color:#374054;margin-bottom:50px}
#contact a{text-decoration: none; padding: 14px 25px; text-align: center; display:inline-block;font-size:20px;color:#a0cfee}

#demo {padding:30px;text-align:jutify;position:fixed;top:10%;left:3%;background-color: #ffffff;border: 1px solid black;opacity: 0.6;border-radius: 50px 20px}
#demo h2{color: #1E90FF;text-align:center}
#btn {tex-align:center;background-color: #a0cfee;border: none; color: white; padding: 14px 45px; text-decoration: none; margin: 1px 1px; border-radius:50px 20px;}
#city {text-align:center}

#demo2 {padding:30px;text-align:jutify;position:fixed;top:10%;right:3%;background-color: #ffffff;border: 1px solid black;opacity: 0.6;border-radius: 50px 20px}
#demo2 h2{color: #1E90FF;text-align:center}
#btn2 {tex-align:center;background-color: #a0cfee;border: none; color: white; padding: 14px 45px; text-decoration: none; margin: 1px 1px; border-radius:50px 20px;}
#city2 {text-align:center}
</style>
</head>
<body>

<div class="container">
<img alt="Loading..." src="back3.png">
</div>

    
<div id="lead-content">
<div id="links">
<a href="#education">Education</a>
<a href="#experience">Experience</a>
<a href="#skills">Skills</a>
<a href="#courses">Courses</a>
<a href="#contact">Contact</a>
</div>
<h1>Salil Jagtap</h1>
<h2>Software Engineer</h2>
<a href="resume.pdf" class="btn-rounded">Download Resume</a>
</div>


<div id="demo">
<h2>Weather</h2>
<form>
<input type="text" id="city" placeholder="Enter the City Name"><br><br>
<button type="button" id="btn"onclick="loadDoc()">Click Me</button>
</form>
<p></p>
</div>

<script>
function loadDoc() {
  var city=document.getElementById("city").value;
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      var object= JSON.parse(this.responseText);
      document.getElementById("demo").innerHTML =
      "Temprature: "+ object.main.temp+" °C<br>"+ 
      "Humidity: "+object.main.humidity+" %<br>" +
      "Max Temprature: "+object.main.temp_max+" °C<br>" +
      "Min Temprature: "+object.main.temp_min+" °C<br>" +
      "Condition: "+object.weather[0].description;
      
    }
    
  };
  xhttp.open("GET", "https://api.openweathermap.org/data/2.5/weather?q="+ city +"&appid=3e6184d3b5a7e11052c1124d03ce6236&units=metric", true);
  xhttp.send();
}
</script>

 <div id="demo2">
<h2>News</h2>
<form>
<input type="text" id="city2" placeholder="Enter the City Name"><br><br>
<button type="button" id="btn2"onclick="loadDoc1()">Click Me</button>
</form>
<p></p>
</div>
 
 
<div id="education">
<h2 class="heading">Education</h2>
<div id="img1"><a href="https://www.tamuk.edu"><img alt="Loading..." src="tamuk.png"></a></div>
<div id="img2"><a href="https://www.sgbau.ac.in/"><img alt="Loading..." src="amu.jpg"></a></div>
<h3>Texas A&M University-Kingsville</h3>
<span class="education-date">August 16, 2017 - May 17, 2019</span>
<h4>Master of Science in Computer Science (GPA-3.91)</h4>
<h3>Amravati University</h3>
<span class="education-date">August 06, 2012 - May 27, 2016 </span>
<h4>Bachelor of Engineering in Computer Science (GPA-3.78)</h4>
</div>


<div id="experience" class="background-alt">
<h2 class="heading">Experience</h2>
<h3>Texas A&M University, Kingsville, Texas</h3>
<span class="education-date">April 02, 2018 - May 10, 2019</span>
<h4>Junior IT Professional</h4>
<ul>
<li>As a member of the web development team, developed a new website for Texas A&M University-Kingsville to improve user experience and student engagement using JavaScript, HTML5, and CSS3</li>
<li>Defined content strategy for migrating data from the old website to the new website using Cascade CMS</li>
<li>Developed an application for the Alternate Admission Review committee using Java and MySQL. This application was developed to provide an additional set of parameters to the committee in student enrollment</li>
<li>Handled Texas A&M University's incoming communication traffic and student records using Talisma and Banner, a Cloud Campus Resource Management tools</li>
</ul>
</div>


<div id="skills">
<h2 class="heading">Skills</h2>
<ul>
<li>JavaScript</li>
<li>HTML5</li>
<li>CSS3</li>
<li>React</li>
<li>Java</li>
<li>XML</li>
<li>jQuery</li>
<li>AJAX</li>
<li>Bootstrap</li>
<li>PHP</li>
<li>Python</li>
<li>C++</li>
<li>C</li>
<li>MySQL</li>
<li>Software Development Life Cycle</li>
<li>Amazon Web Services </li>
<li>Business Required Documentation</li>
</ul>
</div>
</body>


<div id="courses">
<h2 class="heading">Courses</h2>
<ul>
<li>Web Programming</li>
<li>Software Engineering</li>
<li>Cloud Computing</li>
<li>Mobile Application Programming</li>
<li>Database System</li>
<li>Data Structure</li>
<li>Analysis of Algorithms</li>
<li>Operating System</li>
 </ul>
</div>


<div id="contact">
<h2>Get in Touch</h2>
<a href="https://github.com/saliljagtap12" target="_blank">GitHub</a>
<a href="https://www.linkedin.com/in/salil-jagtap/" target="_blank">LinkedIn</a>
<a href="https://www.facebook.com/salil.jagtap" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i>Facebook</a>
</div>

</html>