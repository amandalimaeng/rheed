 <!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="iso-8859-1" />
 
 
<link href="http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet" type="text/css">
  <link href="http://code.ionicframework.com/ionicons/1.5.2/css/ionicons.min.css" rel="stylesheet">
<style type="text/css">
  
  @import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400);


 body{
    font-family: "Open Sans Condensed", sans-serif;
    background: white;
}

section{
  text-align:center;
}
.footer #button{
  width:35px;
  height:35px;
  border: #727172 12px solid;
  border-radius:35px;
  margin:0 auto;
  position:relative;
  -webkit-transition: all 1s ease;
    -moz-transition: all 1s ease;
    -o-transition: all 1s ease;
    -ms-transition: all 1s ease;
    transition: all 1s ease;
}
.footer #button:hover{
  width:35px;
  height:35px;
  border: #3A3A3A 12px solid;
  -webkit-transition: all 1s ease;
    -moz-transition: all 1s ease;
    -o-transition: all 1s ease;
    -ms-transition: all 1s ease;
    transition: all 1s ease;
  position:relative;
}
.footer {
  bottom:0;
  left:0;
  position:fixed;
    width: 100%;
    height: 2em;
    overflow:hidden;
    margin:0 auto;
  -webkit-transition: all 1s ease;
    -moz-transition: all 1s ease;
    -o-transition: all 1s ease;
    -ms-transition: all 1s ease;
    transition: all 1s ease;
  z-index:999;
}
.footer:hover {
  -webkit-transition: all 1s ease;
    -moz-transition: all 1s ease;
    -o-transition: all 1s ease;
    -ms-transition: all 1s ease;
    transition: all 1s ease;
  height: 10em;
}
.footer #container{
  margin-top:5px;
  width:100%;
height:100%;
  position:relative;
  top:0;
  left:0;
  background: #0C78C5 ;
}
.footer #cont{
  position:relative;
  top:-45px;
  right:190px;
  width:150px;
  height:auto;
  margin:0 auto;
}
.footer_center{
  width:500px;
  float:left;
  text-align:center;
}
.footer h3{
  font-family: "Helvetica";
  font-size: 30px;
  font-weight: 100;
  margin-top:70px;
  margin-left:40px;
  color: white;
}
.nav-bar {
    width: 100%;
    padding-top: 0px;
    padding-bottom: 70px;
}
.nav-container {
    overflow: hidden;
    margin: 2.95% auto;
}
.nav-menu {
  display: none;
}
nav.nav-bar ul {
  list-style: none;
}
.nav-list {
  margin: 0 auto;
  width: 100%;
  padding: 0;
}
.nav-list li {
  float: left;
  width:12.5%;
}
.nav-list li a {
  display: block;
  color: #f9f9f9;
  text-shadow: 1px 1px 3px rgba(150, 150, 150, 1);
  padding: 30px 30px;
  font-size: 1.5em;
  text-align: center;
  text-decoration: none;
  -webkit-transition:all 0.2s linear;
   -moz-transition:all 0.2s linear;
     -o-transition:all 0.2s linear;
        transition:all 0.2s linear;
}
.nav-list li a:hover {
  -webkit-filter: brightness(1.3);
  padding-top: 40px ;
}

#tile1 {
  background:#00ced7
}
#tile2 {
  background:#00bbc3
}
#tile3 {
  background:#00a8af
}
#tile4 {
  background:#00959c
}
#tile5 {
  background:#00889c
}
#tile6 {
  background:#007b9c
}
#tile7 {
  background:#006e9c
}
#tile8 {
  background:#005c83
}
@media screen and (max-width: 480px) {
.nav-container, .container {
    background:#4f6f8f

}
.nav-menu{
    color: #fff;
    float: left;
    display: block;
    padding: 10px 10px;
    cursor: pointer;
}
.nav-list{
    float: left; 
    width: 100%;
    height: 0;
}
.nav-open {
    height:auto
}
.nav-list li {
    width:100%
}
.nav-list li a {
    text-align: left;
}
.nav-list li a:hover {
    padding-left: 36%;
    padding-top: 3px;
}
.ptt {
  padding-top: 100px;
  align-content: center;
}
</style>

</head>
<body>
<!-- Beginning header -->
   <script>
                $(document).ready(function(){
                $("#nav-menu").click(function(){
                $("ul.nav-list").addClass("open").slideToggle("200");
                    });
                });
        </script>
<nav class="nav-bar">
    
        <a id="nav-menu" class="nav-menu">☰ Menu</a>
        <ul class="nav-list " id="nav">
            <li> <a href="#" id="tile1"><i class="icon ion-ios7-home-outline"></i> Home</a></li>
            <li> <a href="http://localhost/rheed/index.php/main/funcionario" id="tile2"><i class="icon ion-ios7-people-outline"></i> Ficha Geral</a></li>
            <li> <a href="http://localhost/rheed/index.php/main/saude" id="tile3"><i class="icon ion-medkit"></i> Saúde</a></li>
            <li> <a href="http://localhost/rheed/index.php/main/afastamentos" id="tile4"><i class="icon ion-alert"></i> Afastamentos</a></li>
            <li> <a href="http://localhost/rheed/index.php/main/advertencias" id="tile5"><i class="icon ion-alert-circled"></i> Alertas</a></li>
            <li> <a href="http://localhost/rheed/index.php/main/faltas" id="tile6"><i class="icon ion-sad"></i> Faltas</a></li>
            <li> <a href="http://localhost/rheed/index.php/main/horas" id="tile7"><i class=" icon ion-cash"></i> Horas+</a></li>
            <li> <a href="https://us.qlikcloud.com/edit/5dead932e72b996b62ae4625" id="tile8"><i class="icon ion-pie-graph"></i> Gráficos</a></li>
        



  
</nav>

<!---- <ptt>
<img padiing-top="100px" src="https://i.imgur.com/0cTeBXC.jpg" alt="Logo" >
</ptt> --->

 <footer>

<div class="footer">
  <div id="button"></div>
  
<div id="container">
<div id="cont">
<div class="footer_center"> <h3>RHeed</h3></div>
</footer>
</body>
</html>