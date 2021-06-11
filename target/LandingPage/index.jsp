<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WEBSITE</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/protonet-jquery.inview/1.1.2/jquery.inview.min.js"></script>
</head>
<body>
    <script>
        $(document).ready(function(){
            $('#nav-icon').click(function(){
                $(this).toggleClass('open');
            $(".overlay").toggleClass("open");
            $(".overlay a").toggleClass("open");
        $(".overlay p").toggleClass("open");
            });
        
        // Scroll Reveal
        // ScrollReveal().reveal('.services .grid .card');
        
        $('.square.blue').on('inview', function(event, isInView) {
            if (isInView) {
            // element is now visible in the viewport
            $(this).addClass("in-view");
            } else {
            // element has gone out of viewport
            $(this).removeClass("in-view");
            }
        });
        });
    </script>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Pacifico');
        @import url('https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700');
        
        * {
        margin: 0;
        padding: 0;
        }  

        body {
        font-family: "Source Sans Pro";
        max-width: 100vw;
        overflow-x: hidden;
        }

        h1 {
        color: #272727;
        font-size: 96px;
        font-weight: 700;
        }

        h2 {
        color: #151515;
        font-size: 64px;
        font-weight: 700;
        }

        h6 {
        color: #D6D6D6;
        font-size: 24px;
        font-weight: 600;
        text-transform: uppercase;
        }

        p.description {
        color: #5A5A5A;
        font-size: 24px;
        font-weight: normal;
        }

        h1::selection {
        color: white;
        background: #272727;
        }

        h1::-moz-selection {
        color: white;
        background: #272727;
        }

        .section {
        width: 100vw;
        height: 100vh;
        min-height: 800px;
        background: white;
        position: relative;
        }

        .sectionWrapper {
        width: 85%;
        height: 100%;
        margin: auto;
        display: flex;
        justify-content: center;
        flex-direction: column;
        position: relative;
        }

        .background {
        width: 100vw;
        height: 100vh;
        min-height: 700px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        }

        nav {
        width: 100vw;
        height: 100px;
        background: white;
        position: absolute;
        top: 0;
        animation: 2s fadeInNav ease;
        }

        @keyframes fadeInNav {
        0% {
            opacity: 0;
        }
        50% {
            opacity: 0;
            top: -25px;
        }
        100% {
            opacity: 1;
            top: 0;
        } 
        }

        .navWrapper {
        width: 85%;
        margin: auto;
        padding-top: 24px;
        }

        #logo {
        color: #292929;
        font-size: 30px;
        font-family: "Pacifico";
        font-weight: normal;
        text-decoration: none;
        }

        .right {
        float: right;
        }

        #nav-icon {
        width: 60px;
        height: 45px;
        position: relative;
        z-index: 2;
        -webkit-transform: rotate(0deg);
        -moz-transform: rotate(0deg);
        -o-transform: rotate(0deg);
        transform: rotate(0deg) scale(0.4);
        -webkit-transition: .5s ease-in-out;
        -moz-transition: .5s ease-in-out;
        -o-transition: .5s ease-in-out;
        transition: .5s ease-in-out;
        cursor: pointer;
        margin-top: 10px;
        }

        #nav-icon span {
        display: block;
        position: absolute;
        height: 9px;
        width: 100%;
        background: #292929;
        border-radius: 9px;
        opacity: 1;
        left: 0;
        -webkit-transform: rotate(0deg);
        -moz-transform: rotate(0deg);
        -o-transform: rotate(0deg);
        transform: rotate(0deg);
        -webkit-transition: .25s ease-in-out;
        -moz-transition: .25s ease-in-out;
        -o-transition: .25s ease-in-out;
        transition: .25s ease-in-out;
        }

        #nav-icon span:nth-child(1) {
        top: 0px;
        -webkit-transform-origin: left center;
        -moz-transform-origin: left center;
        -o-transform-origin: left center;
        transform-origin: left center;
        }

        #nav-icon span:nth-child(2) {
        top: 18px;
        -webkit-transform-origin: left center;
        -moz-transform-origin: left center;
        -o-transform-origin: left center;
        transform-origin: left center;
        }

        #nav-icon span:nth-child(3) {
        top: 36px;
        -webkit-transform-origin: left center;
        -moz-transform-origin: left center;
        -o-transform-origin: left center;
        transform-origin: left center;
        }

        #nav-icon.open span:nth-child(1) {
        -webkit-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -o-transform: rotate(45deg);
        transform: rotate(45deg);
        top: -3px;
        left: 8px;
        background: white;
        }

        #nav-icon.open span:nth-child(2) {
        width: 0%;
        opacity: 0;
        background: white;
        }

        #nav-icon.open span:nth-child(3) {
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -o-transform: rotate(-45deg);
        transform: rotate(-45deg);
        top: 39px;
        left: 8px;
        background: white;
        }

        .overlay {
        width: 100%;
        height: 100%;
        background: #151515;
        position: fixed;
        top: 0;
        left: 0;
        -webkit-transition: all 0.3s ease;
        transition: all 0.3s ease;
        opacity: 0;
        z-index: 1;
        visibility: hidden;
        display: flex;
        align-items: center;
        }

        .overlay.open {
        opacity: 1;
        visibility: visible;
        }

        .overlay a {
        color: white;
        font-size: 54px;
        font-weight: bold;
        text-decoration: none;
        display: block;
        margin-left: 135px;
        margin-bottom: 15px; 
        opacity: 0;
        transition: transform 0.2s ease;
        overflow: hidden;
        }

        .overlay p {
        color: #4B4B4B;
        font-size: 20px;
        font-weight: normal;
        position: absolute;
        bottom: 100px;
        margin-left: 135px;
        opacity: 0;
        }

        .overlay p.open {
        opacity: 1;
        animation: 1.70s fadeInCopyright ease;
        }

        @keyframes fadeInCopyright {
        0%{
            opacity: 0;
        }
        80%{
            opacity: 0;
            transform: translateY(-10px);
        }
        100%{
            opacity: 1;
        }
        }

        .overlay a:after {
        position: absolute;
        transition: .3s;
        content: '';
        width: 0;
        left: 50%;
        bottom: 0;
        height: 3px;
        background: white;
        left: 0;
        }

        .overlay a:hover:after {
        width: 100%;
        left: 0;
        }

        .overlay a.open:hover {
        transform: translateY(2px);
        }

        .overlay a.open:nth-child(1) {
        opacity: 1;
        animation: 1s fadeInLinks1 ease;
        }

        @keyframes fadeInLinks1 {
        0%{
            opacity: 0;
        }
        50%{
            opacity: 0;
            transform: translateY(-10px);
        }
        100%{
            opacity: 1;
        }
        }

        .overlay a.open:nth-child(2) {
        opacity: 1;
        animation: 1.25s fadeInLinks2 ease;
        }

        @keyframes fadeInLinks2 {
        0%{
            opacity: 0;
        }
        60%{
            opacity: 0;
            transform: translateY(-10px);
        }
        100%{
            opacity: 1;
        }
        }

        .overlay a.open:nth-child(3) {
        opacity: 1;
        animation: 1.5s fadeInLinks3 ease;
        } 
        
        @keyframes fadeInLinks3 {
        0%{
            opacity: 0;
        }
        70%{
            opacity: 0;
            transform: translateY(-10px);
        }
        100%{
            opacity: 1;
        }
        } 

        #services {
        width: 201px;
        }

        #work {
        width: 224px;
        }

        #contact {
        width: 187px;
        }

        .header {
        width: 100vw;
        display: flex;
        justify-content: center;
        align-items: center;
        }

        .headerWrapper {
        text-align: center;
        position: relative;
        padding: 56px 71px 128px 108px;
        }

        .headerWrapper h6 {
        animation: 1s fadeIn ease;
        }

        @keyframes fadeIn {
        0% {
            opacity: 0;
        }
        100% {
            opacity: 1;
        }
        }

        .headerWrapper h1 {
        animation: 1.5s fadeInTitle ease;
        }

        @keyframes fadeInTitle {
        0% {  
            opacity: 0;
        }
        25% {
            opacity: 0;
        }
        100% {
            opacity: 1;
        }
        }

        .circle {
        border-radius: 50%;
            width: 100px;
            height: 100px; 
        }

        .circle.blue {
        background: linear-gradient(#4F3DD5, #3DB2D5);
        position: absolute;
        top: 21px;
        left: 0px;
        animation: circleBlueMove 2s ease;
        box-shadow: 3px 3px 15px rgba(61, 178, 213, 0.4);
        }

        @keyframes circleBlueMove {
        0% {
            opacity: 0;
            transform: translate(200px, 75px) rotate(90deg);
        }
        100% {
            opacity: 1;
        }
        }

        .circle.orange { 
        background: linear-gradient(#D53D3D, #D5B83D);
        position: absolute;
        bottom: 0px;
        right: 0px;
        animation: circleOrangeMove 2s ease;
        box-shadow: 3px 3px 15px rgba(213, 184, 61, 0.4);
        }

        @keyframes circleOrangeMove {
        0% {
            opacity: 0;
            transform: translate(-200px, -75px) rotate(90deg);
        }
        35% {
            opacity: 0;
            transform: translate(-200px, -75px) rotate(90deg);
        }
        100% {
            opacity: 1;
        }
        }

        .square {
        width: 100px;
        height: 100px;
        }
        
        .square.red {
        background: linear-gradient(135deg, #D53D3D, #D53DC9);
        position: absolute;
        top: 15px; 
        right: 15px;
        animation: squareRedMove 2s ease;
        box-shadow: 3px 3px 15px rgba(213, 61, 201, 0.4);
        transform: rotate(45deg);
        } 

        @keyframes squareRedMove {
        0% {
            opacity: 0;
        }
        20% {
            opacity: 0;
            transform: translate(-200px, 75px) rotate(90deg);
        }
        100% {
            opacity: 1;
        }
        }

        .triangle svg {
        width: 175px;
        height: 175px;
        position: absolute;
        bottom: -17px; 
        left: -20px;  
        animation: triangleGreendMove 2s ease;
        } 

        @keyframes triangleGreendMove {
        0% {
            opacity: 0;
        }
        50% {
            opacity: 0;
            transform: translate(200px, -75px) rotate(90deg);
        }
        100% {
            opacity: 1;
        }
        }

        /* Services */

        .services h6 {
        margin-bottom: 5px;
        }

        .services h2 {
        margin-bottom: 15px;
        }

        .services .description {
        margin-bottom: 60px;
        width: 685px;
        line-height: 40px;
        }

        .services .grid {
        display: grid;
        grid-template-columns: 500px 500px;
        grid-column-gap: 130px;
        grid-template-rows: 150px 150px;
        grid-row-gap: 30px;
        }

        .services .grid .card {
        width: 420px;
        padding: 43px 40px;
        background: linear-gradient(to bottom right, #313131, #0F0F0F);
        border-radius: 5px;
        display: block;
        }

        .services .grid .card h3 {
        color: white;
        font-size: 24px;
        font-weight: 700;
        margin-bottom: 5px;
        }

        .services .grid .card p {
        color: #C3C3C3;
        font-size: 22px;
        font-weight: normal;
        }

        .square.blue { 
        position: absolute;
        box-shadow: 3px 3px 15px rgba(61, 178, 213, 0.4);
        background: linear-gradient(#4F3DD5, #3DB2D5);
        top: 100px;
        right: 75px;
        width: 125px;
        height: 125px;
        opacity: 0.01;
        transition: all 0.05s ease;
        transform: translateX(125px);
        }

        .square.blue.in-view {
        transform: rotate(22.5deg) translateX(0px);
        opacity: 1;
        transition: all 1s ease;
        }

        /* Responsive */

        @media (max-width: 1280px) {
        
        .services .grid {
            display: grid;
            grid-template-columns: 500px 500px;
            grid-column-gap: 50px;
            grid-template-rows: 150px 150px;
            grid-row-gap: 30px;
        }
        }

        @media (max-width: 1200px) {
        
        .services .sectionWrapper {
            padding-top: 185px;
            padding-bottom: 185px;
        }
        
        .services .grid {
            display: grid;
            grid-template-columns: 480px;
            grid-template-rows: 150px 150px;
            grid-row-gap: 30px;
        }
        
        .services .grid .card {
            width: 420px;
            padding: 43px 40px;
            background: linear-gradient(to bottom right, #313131, #0F0F0F);
            border-radius: 5px;
        }
        }

        @media (max-width: 850px) {
        
        .services .sectionWrapper {
            padding-top: 150px;
            padding-bottom: 150px;
        }
        
        h6 {
            font-size: 22px;
        }
        
        h2 {
            font-size: 48px;
        }
        
        .services .description {
            font-size: 22px;
            width: initial;
        }
        
        .services .square.blue {
            width: 75px;
            height: 75px;
        }
        
        .services .grid {
            display: grid;
            grid-template-columns: 85%;
            grid-template-rows: initial;
            grid-row-gap: 25px;
        }
        
        .services .grid .card {
            width: 100%;
            padding: 31.5px 30px;
            background: linear-gradient(to bottom right, #313131, #0F0F0F);
            border-radius: 5px;
        } 

        .services .grid .card h3 {
            color: white;
            font-size: 22px;
            font-weight: 700;
            margin-bottom: 5px;
        }

        .services .grid .card p {
            color: #C3C3C3;
            font-size: 20px;
            font-weight: normal;
        }
        }

        @media (max-width: 850px) and (min-width: 440px){

        .headerWrapper {
        position: static;
        padding: 0;
        }
        
        .overlay a {
        color: white;
        font-size: 36px;
        font-weight: bold;
        text-decoration: none;
        display: block;
        margin-left: 40px;
        margin-bottom: 10px; 
        opacity: 0;
        transition: transform 0.2s ease;
        overflow: hidden;
        }

        .overlay p {
            margin-left: 40px;
        }
        
        #services {
        width: 134px;
        }

        #work {
        width: 150px;
        }

        #contact {
        width: 125px;
        }
        
        h6 {
        font-size: 22px;
        }
        
        .headerWrapper h1 {
        color: #272727;
        font-size: 56px;
        font-weight: 700;
        animation: 1.5s fadeInTitle ease;
        }
        
        .circle {
        border-radius: 50%;  
            width: 75px;
            height: 75px; 
        }

        .circle.blue {
        background: linear-gradient(#4F3DD5, #3DB2D5);
        position: absolute;
        top: 129px;
        left: 50px;
        animation: circleBlueMove 2s ease;
        box-shadow: 3px 3px 15px rgba(61, 178, 213, 0.4);
        }
        
        @keyframes circleBlueMove {
        0% {
            opacity: 0;
            transform: translate(200px, 75px) rotate(90deg);
        }
        100% {
            opacity: 1;
        }
        }

        .circle.orange { 
        background: linear-gradient(#D53D3D, #D5B83D); 
        position: absolute;
        top: 520px;
        right: 50px;
        animation: circleOrangeMove 2s ease;
        box-shadow: 3px 3px 15px rgba(213, 184, 61, 0.4);
        }

        @keyframes circleOrangeMove {
        0% {
            opacity: 0;
            transform: translate(-200px, -75px) rotate(90deg);
        }
        35% {
            opacity: 0;
            transform: translate(-200px, -75px) rotate(90deg);
        }
        100% {
            opacity: 1;
        }
        }

        .square {
        width: 75px;
        height: 75px;
        }
        
        .square.red {
        background: linear-gradient(135deg, #D53D3D, #D53DC9); 
        position: absolute;
        top: 130px; 
        right: 50px; 
        animation: squareRedMove 2s ease;
        box-shadow: 3px 3px 15px rgba(213, 61, 201, 0.4);
        transform: rotate(45deg);
        } 

        @keyframes squareRedMove {
        0% {
            opacity: 0;
        }
        20% {
            opacity: 0;
            transform: translate(-200px, 75px) rotate(90deg);
        }
        100% {
            opacity: 1;
        }
        }

        .triangle svg {  
        width: 125px;
        height: 125px;
        position: absolute;
        top: 480px;
        left: 25px;
        animation: triangleGreendMove 2s ease;
        }

        @keyframes triangleGreendMove {
        0% {
            opacity: 0;
        }
        50% {
            opacity: 0;
            transform: translate(200px, -75px) rotate(90deg);
        }
        100% {
            opacity: 1;
        }
        }
        }

        @media (max-width: 440px) {

        .background {
            max-height: 700px;
        }
        
        .headerWrapper {
            position: static;
            padding: 0;
        }
        
        .overlay a {
        color: white;
        font-size: 36px;
        font-weight: bold;
        text-decoration: none;
        display: block;
        margin-left: 40px;
        margin-bottom: 10px; 
        opacity: 0;
        transition: transform 0.2s ease;
        overflow: hidden;
        }
        
        .overlay p {
        margin-left: 40px;
        position: static;
        margin-top: 40px;
        }
        
        #services {
        width: 134px;
        }

        #work {
        width: 150px;
        }

        #contact {
        width: 125px;
        }
        
        .headerWrapper h6 {
        color: #D6D6D6;
        font-size: 22px;
        font-weight: 600;
        text-transform: uppercase;
        animation: 1s fadeIn ease;
        }
        
        .headerWrapper h1 {
        color: #272727;
        font-size: 48px;
        font-weight: 700;
        animation: 1.5s fadeInTitle ease;
        }
        
        .circle {
        border-radius: 50%;  
            width: 75px;
            height: 75px; 
        }

        .circle.blue {
        background: linear-gradient(#4F3DD5, #3DB2D5);
        position: absolute;
        top: 169px;
        left: 25px;
        animation: circleBlueMove 2s ease;
        box-shadow: 3px 3px 15px rgba(61, 178, 213, 0.4);
        }
        
        @keyframes circleBlueMove {
        0% {
            opacity: 0;
            transform: translate(100px, 75px) rotate(90deg);
        }
        100% {
            opacity: 1;
        }
        }

        .circle.orange { 
        background: linear-gradient(#D53D3D, #D5B83D); 
        position: absolute;
        top: 480px;
        right: 25px;
        animation: circleOrangeMove 2s ease;
        box-shadow: 3px 3px 15px rgba(213, 184, 61, 0.4);
        }

        @keyframes circleOrangeMove {
        0% {
            opacity: 0;
        }
        35% {
            opacity: 0;
            transform: translate(-100px, -75px) rotate(90deg);
        }
        100% {
            opacity: 1;
        }
        }

        .square {
        width: 75px;
        height: 75px;
        }
        
        .square.red {
        background: linear-gradient(135deg, #D53D3D, #D53DC9); 
        position: absolute;
        top: 170px; 
        right: 25px; 
        animation: squareRedMove 2s ease;
        box-shadow: 3px 3px 15px rgba(213, 61, 201, 0.4);
        transform: rotate(45deg);
        } 

        @keyframes squareRedMove {
        0% {
            opacity: 0;
        }
        20% {
            opacity: 0;
            transform: translate(-100px, 75px) rotate(90deg);
        }
        100% {
            opacity: 1;
        }
        }

        .triangle svg {  
        width: 125px;
        height: 125px;
        position: absolute;
        top: 450px;
        left: 5px;
        animation: triangleGreendMove 2s ease;
        }

        @keyframes triangleGreendMove {
        0% {
            opacity: 0;
        }
        50% {
            opacity: 0;
            transform: translate(100px, -75px) rotate(90deg);
        }
        100% {
            opacity: 1;
        }
        }
        
        .square.blue {
            top: 30px;
            right: 10px;
            transform: translateX(60px);
        }
        
        .square.blue.in-view {
            transform: rotate(22.5deg) translateX(0px);
        }

        }
    </style>
    <div class="background">
        <nav>
          <div class="navWrapper">
            <a href="" id="logo">Logo</a>
            <div class="right"> 
              <div id="nav-icon" id="menuIcon">
                  <span></span>
                  <span></span>
                  <span></span>
              </div>
              <div class="overlay">
                <div class="overlayContent">
                  <a href="#" id="services">Services</a>
                  <a href="#" id="work">Our work</a>
                  <a href="#" id="contact">Contact</a>
                  <p>Copyright 2018</p>
                </div>
              </div>
            </div>
           </div>
        </nav>
        <div class="header">
          <div class="headerWrapper">
            <h6>we do</h6>
            <h1>Web Design <br> & Development</h1>
            <div class="circle blue"></div>
            <div class="square red"></div>
            <div class="triangle green"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 177.893 177.893"><defs><style>.a{fill:url(#a);}.b{filter:url(#b);}</style><linearGradient id="a" x1="0.5" x2="0.5" y2="1" gradientUnits="objectBoundingBox"><stop offset="0" stop-color="#3dbed5"/><stop offset="1" stop-color="#3dd55a"/></linearGradient><filter id="b" x="0" y="0" width="177.893" height="177.893" filterUnits="userSpaceOnUse"><feOffset dx="3" dy="3" input="SourceAlpha"/><feGaussianBlur stdDeviation="7.5" result="c"/><feFlood flood-color="#3dd55a" flood-opacity="0.396"/><feComposite operator="in" in2="c"/><feComposite in="SourceGraphic"/></filter></defs><g class="b" transform="matrix(1, 0, 0, 1, 0, 0)"><path class="a" d="M136.727,21104.928l-50.222,100h100Z" transform="translate(-8978.23 -19029.24) rotate(-25)"/></g></svg></div>
            <div class="circle orange"></div>
          </div>
        </div>
      </div>
      
      <div class="section services">
        <div class="sectionWrapper">
          <h6>what we offer</h6>
          <h2>Our services</h2>
          <p class="description">I am developing these skills from when I was 12 years old. I still love what I do and I would love to share my knowledge with the world.</p>
          <div class="square blue"></div>
          <div class="grid">
            <!-- Web Development -->
            <div class="card">
              <h3>Web Development</h3>
              <p>I create websites and web services.</p>
            </div>
            <!-- Web Design -->
            <div class="card">
              <h3>Web Design</h3>
              <p>I design webpages and web platforms.</p>
            </div>
            <!-- Branding -->
            <div class="card">
              <h3>Branding</h3>
              <p>I design brand guidelines and brand styles.</p>
            </div>
            <!-- Social Media Marketing -->
            <div class="card">
              <h3>Social Media Marketing</h3>
              <p>I run a social media business.</p>
            </div>
          </div>
        </div>
      </div>
</body>
</html>