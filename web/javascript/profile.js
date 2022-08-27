var iconListfollowersHandler = document.getElementById("icon-listfollowers");
var iconListfollowingHandler = document.getElementById("icon-listfollowing");
var subnavListfollowersHandler = document.getElementById("subnav-listfollowers");
var subnavListfollowingHandler = document.getElementById("subnav-listfollowing");
// Subnav List Followers Handler
iconListfollowersHandler.addEventListener("click", function () {
    subnavListfollowersHandler.style.visibility = "visible";
})
document.addEventListener("click", function (e) {
    if (!subnavListfollowersHandler.contains(e.target) && !iconListfollowersHandler.contains(e.target)) {
        subnavListfollowersHandler.style.visibility = "hidden";
    }
})

// Subnav List Following Handler
iconListfollowingHandler.addEventListener("click", function () {
    subnavListfollowingHandler.style.visibility = "visible";
})
document.addEventListener("click", function (e) {
    if (!subnavListfollowingHandler.contains(e.target) && !iconListfollowingHandler.contains(e.target)) {
        subnavListfollowingHandler.style.visibility = "hidden";
    }
})