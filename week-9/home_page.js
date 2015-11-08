// DOM Manipulation Challenge


// I worked on this challenge with Max for 1.5 hours.


// Add your JavaScript calls to this page:

/// Release 0:

document.getElementById("release-0").className += " done";

// Release 1:
document.getElementById("release-1").style.display = "none";

// Release 2:
document.querySelector("h1").innerHTML="I completed release 2.";
//document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2. ";
//#955251

// Release 3:
document.getElementById("release-3").style.backgroundColor="#955251";



// Release 4:
//document.querySelectorAll(".release-4").style.fontSize = "2em";
//document.getElementsByClassName("release-4").style.fontSize = "2em";

var large = document.getElementsByClassName("release-4");

for (var i = 0; i < large.length; i++) {
    large[i].style.fontSize = "2em";
};    

// Release 5:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

//Reflection
//What did you learn about the DOM?
//That is was a lot of fun. I didnt know that if you created a new class in js it didnt show in the html document. It is there to change but you wont see it in the html.
//What are some useful methods to use to manipulate the DOM?
//The tags are all pretty much the same as in css and the properties they hold.
//querySelector was a good one to learn, and getElement.
