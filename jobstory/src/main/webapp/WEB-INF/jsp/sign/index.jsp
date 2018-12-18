<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	* {
  box-sizing: border-box;
}

body {
  margin: 0;
  background-color: #e12835;
  background-image: radial-gradient(#e12835 20%, #be2633 50%, rgba(0, 0, 0, 0.5) 100%);
  background-size: 120%;
  background-position: center;
  font-family: "Barlow Condensed", sans-serif;
  -webkit-animation: tighten-vinette ease-out 1800ms forwards;
          animation: tighten-vinette ease-out 1800ms forwards;
}

.images {
  pointer-events: none;
  height: 100vh;
  top: 0;
  bottom: 0;
  right: 0;
  left: 0;
  position: absolute;
  opacity: .6;
  z-index: 20;
  background-size: cover;
  background-position: center;
  background-repeat: none;
  background-image: url("../img/intro/intro1.jpg");
}

.wrapper {
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
}

.logo {
  cursor: pointer;
  text-align: center;
}

/* .restart {
  color: #fff;
  margin-top: 20px;
  font-size: 1.5rem;
  text-transform: uppercase;
  letter-spacing: -.08rem;
  transition: opacity 150ms linear;
} */

.marvel, .studios {
  position: relative;
  color: #fff;
  text-transform: uppercase;
  letter-spacing: -.2rem;
  font-size: 5rem;
  margin: .05rem .05rem .5rem;
  padding: 0 0.4rem;
  display: inline-block;
}

.studios {
  font-weight: 500;
  letter-spacing: -.3rem;
  -webkit-transform: translateX(-95px);
          transform: translateX(-95px);
}

.marvel {
  z-index: 10;
  font-weight: 800;
  -webkit-transform: translateX(95px);
          transform: translateX(95px);
}
.marvel:before {
  z-index: -10;
  content: '';
  display: block;
  background-color: #e12835;
  border: solid rgba(255, 255, 255, 0.2) 1px;
  height: 100%;
  width: 100%;
  position: absolute;
  top: 0;
  left: 0;
}

.studios:after, .studios:before {
  content: '';
  display: block;
  height: 3px;
  position: absolute;
  background-color: #fff;
  display: block;
  left: 0.4rem;
  right: 0.4rem;
}

.studios:before {
  top: 0;
}
.studios:after {
  bottom: 0;
}

.wrapper.run-animation {
  -webkit-animation: shrink ease-out 4800ms forwards 600ms;
          animation: shrink ease-out 4800ms forwards 600ms;
}
.wrapper.run-animation .marvel {
  -webkit-transform: translateX(95px);
          transform: translateX(95px);
  -webkit-animation: slide-out-X 750ms ease forwards;
          animation: slide-out-X 750ms ease forwards;
}
.wrapper.run-animation .studios {
  -webkit-transform: translateX(-95px);
          transform: translateX(-95px);
  color: transparent;
  -webkit-animation: slide-out-X 750ms ease forwards, show-text 300ms linear forwards 1500ms;
          animation: slide-out-X 750ms ease forwards, show-text 300ms linear forwards 1500ms;
}
.wrapper.run-animation .studios:before {
  -webkit-transform: translateY(2.9rem);
          transform: translateY(2.9rem);
  -webkit-animation: slide-out-Y 300ms ease forwards 750ms;
          animation: slide-out-Y 300ms ease forwards 750ms;
}
.wrapper.run-animation .studios:after {
  -webkit-transform: translateY(-2.9rem);
          transform: translateY(-2.9rem);
  -webkit-animation: slide-out-Y 300ms ease forwards 750ms;
          animation: slide-out-Y 300ms ease forwards 750ms;
}
/* .wrapper.run-animation .restart {
  opacity: 0;
  -webkit-animation: fade-down 1200ms ease 3600ms forwards;
          animation: fade-down 1200ms ease 3600ms forwards;
} */
.wrapper.run-animation ~ .images {
  -webkit-animation: flicker-images 1500ms 2 steps(1, end), fade-out 4500ms forwards;
          animation: flicker-images 1500ms 2 steps(1, end), fade-out 4500ms forwards;
}

@-webkit-keyframes slide-out-X {
  100% {
    -webkit-transform: translateX(0);
            transform: translateX(0);
  }
}

@keyframes slide-out-X {
  100% {
    -webkit-transform: translateX(0);
            transform: translateX(0);
  }
}
@-webkit-keyframes slide-out-Y {
  100% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
}
@keyframes slide-out-Y {
  100% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
}
@-webkit-keyframes show-text {
  100% {
    color: #fff;
  }
}
@keyframes show-text {
  100% {
    color: #fff;
  }
}
@-webkit-keyframes shrink {
  100% {
    -webkit-transform: scale(0.8);
            transform: scale(0.8);
  }
}
@keyframes shrink {
  100% {
    -webkit-transform: scale(0.8);
            transform: scale(0.8);
  }
}
@-webkit-keyframes tighten-vinette {
  100% {
    background-size: 120%;
  }
}
@keyframes tighten-vinette {
  100% {
    background-size: 120%;
  }
}
@-webkit-keyframes fade-down {
  0% {
    -webkit-transform: translateY(-2rem);
            transform: translateY(-2rem);
    opacity: 0;
  }
  100% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
    opacity: .5;
  }
}
@keyframes fade-down {
  0% {
    -webkit-transform: translateY(-2rem);
            transform: translateY(-2rem);
    opacity: 0;
  }
  100% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
    opacity: .5;
  }
}
@-webkit-keyframes fade-out {
  100% {
    opacity: 0;
  }
}
@keyframes fade-out {
  100% {
    opacity: 0;
  }
}
@-webkit-keyframes flicker-images {
  0% {
    background-image: url("../img/intro/intro2.jpg");
  }
  10% {
    background-image: url("../img/intro/intro3.jpg");
  }
  20% {
    background-image: url("../img/intro/intro4.jpg");
  }
  30% {
    background-image: url("../img/intro/intro5.jpg");
  }
  40% {
    background-image: url("../img/intro/intro6.jpg");
  }
  50% {
    background-image: url("../img/intro/intro7.jpg");
  }
  60% {
    background-image: url("../img/intro/intro8.jpg");
  }
  70% {
    background-image: url("../img/intro/intro9.jpg");
  }
  80% {
    background-image: url("../img/intro/intro10.jpg");
  }
  90% {
    background-image: url("../img/intro/intro1.jpg");
  }
  100% {
    background-image: url("../img/intro/intro2.jpg");
  }
}
@keyframes flicker-images {
  0% {
    background-image: url("../img/intro/intro2.jpg");
  }
  10% {
    background-image: url("../img/intro/intro3.jpg");
  }
  20% {
    background-image: url("../img/intro/intro4.jpg");
  }
  30% {
    background-image: url("../img/intro/intro5.jpg");
  }
  40% {
    background-image: url("../img/intro/intro6.jpg");
  }
  50% {
    background-image: url("../img/intro/intro7.jpg");
  }
  60% {
    background-image: url("../img/intro/intro8.jpg");
  }
  70% {
    background-image: url("../img/intro/intro9.jpg");
  }
  80% {
    background-image: url("../img/intro/intro10.jpg");
  }
  90% {
    background-image: url("../img/intro/intro1.jpg");
  }
  100% {
    background-image: url("../img/intro/intro2.jpg");
  }
}
.into a {
   text-decoration:none;
   color: white; 
   letter-spacing: -.2rem;
   font-size: 35px;
   font-weight: 700;
   margin-top: 1px;
}
</style>
</head>
<body>
	<div class="wrapper run-animation" id="animate">
		<div class="logo">
	
			<span class="marvel">BITCAMP</span>
			<span class="studios">JOB STORY</span>
	
			<div class="into"><a href='<c:url value="/sign/signInPage.do"/>'>START</a></div>
		</div>
	</div>
	
	<div class="images"></div>
</body>
<script>
	element = document.getElementById("animate");
	
	if (element) {
		// reset the transition by...
		element.addEventListener("click", function(e) {
			e.preventDefault;
	
			console.log('element', element.classList);
	
			// removing the class
			element.classList.remove("run-animation");
	
			// triggering reflow
			void element.offsetWidth;
	
			// and re-adding the class
			element.classList.add("run-animation");
		}, false);
	}	
</script>
</html>