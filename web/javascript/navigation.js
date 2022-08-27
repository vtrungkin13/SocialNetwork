// Friend
var iconFriendHandler = document.getElementById("icon-friend");
var subnavFriendHandler = document.getElementById("subnav-friend");

// Notification
var iconNotifHandler = document.getElementById("icon-notif");
var subnavNotifHandler = document.getElementById("subnav-notif");

// User
var iconUserHandler = document.getElementById("icon-user");
var subnavUserHandler = document.getElementById("subnav-user");

// NewPost
var iconNewpostHandler = document.getElementById("icon-newpost");
var newpostHandler = document.getElementById("subnav-newpost");
var newpostCloseHandler = document.getElementById("newpost-close");
var newpostItemHandler = document.getElementsByClassName("newpost-item");
var imagePreview = document.getElementById("image-preview")
var imageInput = document.getElementById("image-input")
var imageInputView = document.getElementById("image-input-view")
var imageUndo = document.getElementById("image-undo")

// Like + Save
var heartIconHandler = document.getElementsByClassName("heart-icon")
var heartFillIconHandler = document.getElementsByClassName("heart-fill-icon")
var saveIconHandler = document.getElementsByClassName("save-icon")
var saveFillIconHandler = document.getElementsByClassName("save-fill-icon")

// Search
var subnavSearchHandler = document.getElementById("subnav-search")
var searchInputHandler = document.getElementById("search-input")
var searchItemHandler = document.getElementsByClassName("search-item")
var itemUserHandler = document.getElementsByClassName("item-user")
// Search mobile
var iconSearchHandler = document.getElementById("icon-search")
var mobileSearchHandler = document.getElementById("mobile-search")
var mobileSearchContainerHandler = document.getElementById("mobile-search-container")
var mobileSubnavSearchHandler = document.getElementById("mobile-subnav-search")
var mobileSearchInputHandler = document.getElementById("mobile-search-input")
var mobileSearchItemHandler = document.getElementsByClassName("mobile-search-item")
var mobileItemUserHandler = document.getElementsByClassName("mobile-item-user")


// Search Handler 
searchInputHandler.addEventListener("input", function () {
    subnavSearchHandler.style.visibility = "visible";
})

document.addEventListener("click", function (e) {
    if (!subnavSearchHandler.contains(e.target) && !searchInputHandler.contains(e.target)) {
        subnavSearchHandler.style.visibility = "hidden";
        for (var i = 0; i < itemUserHandler.length; i++) {
            searchItemHandler[i].style.display = "none";
        }
    }
})

var temp = "-1";
searchInputHandler.addEventListener("input", function (e) {
    if (e.target.value != temp) {
        for (var i = 0; i < itemUserHandler.length; i++) {
            searchItemHandler[i].style.display = "none";
        }
        temp = e.target.value;
    }
    if (e.target.value != "") {
        for (var i = 0; i < itemUserHandler.length; i++) {
            if (itemUserHandler[i].innerHTML.toLowerCase().includes(e.target.value.toLowerCase())) {
                subnavSearchHandler.style.visibility = "visible";
                searchItemHandler[i].style.display = "flex";
            }
        }
    } else {
        subnavSearchHandler.style.visibility = "hidden"
        for (var i = 0; i < itemUserHandler.length; i++) {
            searchItemHandler[i].style.display = "none";
        }
    }
})

// Search Mobile 
iconSearchHandler.addEventListener("click", function () {
    mobileSearchHandler.style.visibility = "visible";
})
document.addEventListener("click", function (e) {
    if (!mobileSearchContainerHandler.contains(e.target) && !iconSearchHandler.contains(e.target)) {
        mobileSubnavSearchHandler.style.visibility = "hidden";
        mobileSearchHandler.style.visibility = "hidden";
    }
})
// Search Mobile input handle

var mobileTemp = "-1";
mobileSearchInputHandler.addEventListener("input", function (e) {
    if (e.target.value != mobileTemp) {
        for (var i = 0; i < mobileItemUserHandler.length; i++) {
            mobileSearchItemHandler[i].style.display = "none";
        }
        mobileTemp = e.target.value;
    }
    if (e.target.value != "") {
        for (var i = 0; i < mobileItemUserHandler.length; i++) {
            if (mobileItemUserHandler[i].innerHTML.toLowerCase().includes(e.target.value.toLowerCase())) {
                mobileSubnavSearchHandler.style.visibility = "visible";
                mobileSearchItemHandler[i].style.display = "flex";
                console.log(mobileSearchItemHandler[i]);
            }
        }
    } else {
        mobileSubnavSearchHandler.style.visibility = "hidden"
        for (var i = 0; i < mobileItemUserHandler.length; i++) {
            mobileSearchItemHandler[i].style.display = "none";
        }
    }
})



// Subnav Friend Handler
iconFriendHandler.addEventListener("click", function () {
    subnavFriendHandler.style.visibility = "visible";
})
document.addEventListener("click", function (e) {
    if (!subnavFriendHandler.contains(e.target) && !iconFriendHandler.contains(e.target)) {
        subnavFriendHandler.style.visibility = "hidden";
    }
})

// Subnav Notification Handler
iconNotifHandler.addEventListener("click", function () {
    subnavNotifHandler.style.visibility = "visible";
})
document.addEventListener("click", function (e) {
    if (!subnavNotifHandler.contains(e.target) && !iconNotifHandler.contains(e.target)) {
        subnavNotifHandler.style.visibility = "hidden";
    }
})
// Subnav User Handler
iconUserHandler.addEventListener("click", function () {
    subnavUserHandler.style.visibility = "visible";
})
document.addEventListener("click", function (e) {
    if (!subnavUserHandler.contains(e.target) && !iconUserHandler.contains(e.target)) {
        subnavUserHandler.style.visibility = "hidden";
    }
})

// Heart & Save Iteraction
// Heart
for (let i = 0; i < heartIconHandler.length; i++) {
    if (i != null) {
        heartIconHandler[i].addEventListener("click", function () {
            heartIconHandler[i].style.display = "none";
            heartFillIconHandler[i].style.display = "block";
        })
    }
}

for (let i = 0; i < heartFillIconHandler.length; i++) {
    if (i != null) {
        heartFillIconHandler[i].addEventListener("click", function () {
            heartFillIconHandler[i].style.display = "none";
            heartIconHandler[i].style.display = "block";
        })
    }
}
// Save
for (let i = 0; i < saveIconHandler.length; i++) {
    if (i != null) {
        saveIconHandler[i].addEventListener("click", function () {
            saveIconHandler[i].style.display = "none";
            saveFillIconHandler[i].style.display = "block";
        })
    }
}

for (let i = 0; i < saveFillIconHandler.length; i++) {
    if (i != null) {
        saveFillIconHandler[i].addEventListener("click", function () {
            saveFillIconHandler[i].style.display = "none";
            saveIconHandler[i].style.display = "block";
        })
    }
}
// New post handler
iconNewpostHandler.addEventListener("click", function () {
    newpostHandler.style.visibility = "visible";
})
document.addEventListener("click", function (e) {
    var temp = false;
    for (item of newpostItemHandler) {
        if (item.contains(e.target))
            temp = true;
    }
    if (!temp && !iconNewpostHandler.contains(e.target)) {
        newpostHandler.style.visibility = "hidden";
    }
})
newpostCloseHandler.addEventListener("click", function () {
    newpostHandler.style.visibility = "hidden";
})

// New post Image Handler
imageInput.addEventListener("change", function () {
    imageInputView.style.display = "none";
    imageUndo.style.display = "block";
    const file = this.files[0];
    if (file) {
        const reader = new FileReader();

        reader.addEventListener("load", function () {
            console.log(this)
            imagePreview.setAttribute("src", this.result);
        })

        reader.readAsDataURL(file);

    }
})

imageUndo.addEventListener("click",function() {
  imageUndo.style.display = "none";
  imageInputView.style.display = "block";
  imagePreview.setAttribute("src","http://www.arteoral.com.br/wp-content/uploads/2016/04/dummy-post-square-1-768x768.jpg")
})
