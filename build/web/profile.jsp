<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.2.0/fonts/remixicon.css" rel="stylesheet" />
        <script src="https://cdn.tailwindcss.com"></script>
        <title>Profile</title>
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>
        
        <!-- Container  -->
        <div class="-z-10 min-h-screen bg-gray-50">
            <div class="2xl:mx-80 xl:mx-52 sm:mx-12 pt-12 sm:pt-20">
                <!-- Profile  -->
                <div class="mt-4">
                    <img id="avatar" class="float-left h-20 w-20 sm:h-40 sm:w-40 mx-6 sm:mx-12 rounded-full cursor-pointer" src="avatar/${sessionScope.user.avatar}" alt="" />
                    <div class="">
                        <div class="flex flex-row justify-start items-center mb-2 sm:mb-5">
                            <p class="text-xl sm:text-3xl font-thin">${sessionScope.user.username}</p>
                            <div class="flex sm:ml-0 text-sm sm:text-base">
                                <a href="edit" class="rounded-md flex justify-center items-center border border-gray-400 h-7 px-1 sm:px-2 py-2 sm:py-2 ml-6 sm:ml-6 cursor-pointer bg-gray-50">Edit profile</a>   
                            </div>

                        </div>
                        <div class="ml-32 sm:ml-0 flex justify-start text-xl mb-2 sm:mb-5">
                            <p class=" text-sm sm:text-xl mr-4 sm:mr-16"><span class="mr-1 font-bold">${requestScope.posts.size()}</span>${requestScope.post.size() > 1 ? "posts" : "post"}</p>      
                            <div class="relative text-sm sm:text-xl mr-4 sm:mr-16">
                                <p id="icon-listfollowers" class=" cursor-pointer"><span class="mr-1 font-bold">${requestScope.followers.size()}</span>${requestScope.follower.size() > 1 ? "followers" : "follower"}</p>
                                <!-- Subnav list followers  -->
                                <div id="subnav-listfollowers" class="absolute top-8 -right-14 w-60 min-h-fit max-h-96 overflow-y-scroll bg-white rounded-lg py-1 border border-gray-300 shadow-md"  style="visibility:hidden" >
                                    <p class="flex justify-center font-bold text-base p-1 border-b border-gray-400">Followers</p>
                                    <!-- loop  -->
                                    <c:forEach items="${requestScope.followers}" var="f">
                                        <div class="flex justify-between items-center p-1">
                                            <div class="flex justify-start items-center ml-1">
                                                <img class="w-10 h-10 rounded-full" src="avatar/${f.user.avatar}" alt=""> 
                                                <div class="ml-2">
                                                    <a class="text-sm font-bold" href="profile?username=${f.user.username}">${f.user.username}</a>
                                                    <p class="text-base">${f.user.name}</p>
                                                </div>
                                            </div>
                                            <a href="#" class="float-right py-0.5 px-2 mr-2 rounded-md border border-gray-400 font-bold text-sm cursor-pointer bg-gray-50">Remove</a>
                                        </div>
                                    </c:forEach>
                                    <div class="flex justify-between items-center p-1">
                                        <div class="flex justify-start items-center ml-1">
                                            <img class="w-10 h-10 rounded-full" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow"> 
                                            <div class="ml-2">
                                                <a href="#" class="text-sm font-bold">dddejavuu_</a>
                                                <p class="text-base">NgÃ´ VÅ©</p>
                                            </div>
                                        </div>
                                        <a href="#" class="float-right py-0.5 sm:pb-1 px-3 mr-2 rounded-md font-bold text-sm cursor-pointer bg-emerald-400 opacity-95 hover:opacity-100">Follow</a>
                                    </div>
                                </div>
                            </div>
                            <div class="relative text-sm sm:text-xl mr-4 sm:mr-16">
                                <p id="icon-listfollowing" class="  cursor-pointer"><span class="mr-1 font-bold">${requestScope.followings.size()}</span>following</p>
                                <!-- Subnav list Following  -->
                                <div id="subnav-listfollowing" class="absolute top-8 -right-4 w-64 min-h-fit max-h-96 bg-white rounded-lg py-1 border border-gray-300 shadow-md"  style="visibility:hidden">
                                    <p class="flex justify-center font-bold text-base p-1 border-b border-gray-400">Following</p>
                                    <!-- loop  -->
                                    <c:forEach items="${requestScope.followings}" var="f">
                                        <div class="flex justify-between items-center p-1">
                                            <div class="flex justify-start items-center ml-1">
                                                <img class="w-10 h-10 rounded-full" src="avatar/${f.following.avatar}" alt=""> 
                                                <div class="ml-2">
                                                    <a class="text-sm font-bold" href="profile?username=${f.following.username}">${f.following.username}</a>
                                                    <p class="text-base">${f.following.name}</p>
                                                </div>
                                            </div>
                                            <a href="#" class="float-right py-0.5 px-2 mr-2 rounded-md border border-gray-400 font-bold text-sm cursor-pointer bg-gray-50">Following</a>
                                        </div>
                                    </c:forEach>       
                                </div>
                            </div>
                        </div>
                        <div class="ml-32 mb-2 sm:mb-6">
                            <p class=" text-sm sm:text-xl font-bold" >${sessionScope.user.name}</p>
                            <p class=" text-xs sm:text-base">${sessionScope.user.bio}</p>
                        </div>
                    </div>
                </div>
                <!-- Story -->
                <div class="ml-2 sm:ml-0 p-2 sm:p-5 flex justify-start">
                    <div>
                        <div class="icon-story cursor-pointer p-0.5 sm:p-1 bg-white rounded-full mx-1 sm:mx-3 border sm:border-2 border-opacity-40 border-gray-300 shadow-md">
                            <img class="w-12 h-12 sm:w-20 sm:h-20 rounded-full" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow"> 
                        </div>
                        <p class="text-xs sm:text-base flex justify-center mt-1 sm:mt-2 font-bold ">2022</p>
                    </div>
                    <div>
                        <div class="icon-story cursor-pointer p-0.5 sm:p-1 bg-white rounded-full mx-1 sm:mx-3 border sm:border-2 border-opacity-40 border-gray-300 shadow-md">
                            <img class="w-12 h-12 min-w-20 min-h-20 sm:w-20 sm:h-20 rounded-full" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow"> 
                        </div>
                        <p class="text-xs sm:text-base flex justify-center mt-1 sm:mt-2 font-bold ">2022</p>
                    </div>
                    <div>
                        <div class="icon-story cursor-pointer p-0.5 sm:p-1 bg-white rounded-full mx-1 sm:mx-3 border sm:border-2 border-opacity-40 border-gray-300 shadow-md">
                            <img class="w-12 h-12 min-w-20 min-h-20 sm:w-20 sm:h-20 rounded-full" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow"> 
                        </div>
                        <p class="text-xs sm:text-base flex justify-center mt-1 sm:mt-2 font-bold ">2022</p>
                    </div>
                    <div>
                        <div class="icon-story cursor-pointer p-0.5 sm:p-1 bg-white rounded-full mx-1 sm:mx-3 border sm:border-2 border-opacity-40 border-gray-300 shadow-md">
                            <img class="w-12 h-12 min-w-20 min-h-20 sm:w-20 sm:h-20 rounded-full" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow"> 
                        </div>
                        <p class="text-xs sm:text-base flex justify-center mt-1 sm:mt-2 font-bold ">2022</p>
                    </div>
                </div>
            </div>
            <!-- Post  -->

            <div class ="flex justify-center flex-wrap sm:pt-10 xl:mx-20">
                <c:forEach items="${requestScope.posts}" var="p">
                    <div>
                        <img class="post w-28 h-28 xl:w-72 xl:h-72 2xl:h-96 2xl:w-96 m-2 2xl:m-4 cursor-pointer" src="post-image/${p.image}" alt="">
                        <!-- Post detail  -->
                        <div style="visibility: hidden" class="postdetail fixed top-0 right-0 left-0 w-screen h-screen max-h-screen max-w-screen bg-gray-700 bg-opacity-80 z-50" >
                            <div class="postdetail-container flex flex-col sm:flex-row h-screen w-screen sm:w-2/3 sm:h-5/6 mx-auto sm:mt-20 bg-white pt-10 sm:pt-0">
                                <div class="w-full flex justify-center items-center">
                                    <img class="w-48 sm:h-fit" src="post-image/${p.image}" alt="">
                                </div>
                                <div class="relative w-full h-full sm:w-2/3">
                                    <div class=" absolute top-0 left-0 w-full flex justify-between items-center border-b border-gray-200">
                                        <div class="flex justify-start items-center py-1 sm:py-2">
                                            <img class="w-8 h-8 rounded-full mr-3 ml-4" src="avatar/${p.user.avatar}" alt="meow">
                                            <p class="text-xs sm:text-sm font-bold mr-1" >${p.user.username}</p>  
                                        </div>
                                        <i class="ri-more-line mr-4 font-bold text-xl"></i>
                                    </div>
                                    <div class="mt-12 mb-96 mx-4">
                                        <!-- Loop  -->
                                        <div class="flex justify-start items-center py-1 sm:py-2">
                                            <img class="w-8 h-8 rounded-full mr-3" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
                                            <p class="text-xs sm:text-sm font-bold mr-1" >kientrv132</p>
                                            <p class="text-sm">Comment nè</p>
                                        </div>
                                        <div class="flex justify-start items-center py-1 sm:py-2">
                                            <img class="w-8 h-8 rounded-full mr-3" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
                                            <p class="text-xs sm:text-sm font-bold mr-1" >tuancang103</p>
                                            <p class="text-sm">Comment nè</p>
                                        </div>
                                    </div>
                                    <div class="absolute bottom-0 left-0 w-full border-t border-gray-200" >
                                        <div>
                                            <!-- Icon  -->
                                            <div class="flex justify-between my-4">
                                                <div class="flex justify-between">
                                                    <!-- Heart Iteraction If else -->
                                                    <svg class="heart-icon mt-1 mr-2 ml-2 w-7 cursor-pointer sm:w-7" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="none" d="M0 0H24V24H0z"/><path d="M12.001 4.529c2.349-2.109 5.979-2.039 8.242.228 2.262 2.268 2.34 5.88.236 8.236l-8.48 8.492-8.478-8.492c-2.104-2.356-2.025-5.974.236-8.236 2.265-2.264 5.888-2.34 8.244-.228zm6.826 1.641c-1.5-1.502-3.92-1.563-5.49-.153l-1.335 1.198-1.336-1.197c-1.575-1.412-3.99-1.35-5.494.154-1.49 1.49-1.565 3.875-.192 5.451L12 18.654l7.02-7.03c1.374-1.577 1.299-3.959-.193-5.454z" fill="rgba(47,204,113,1)"/></svg>
                                                    <svg style="display: none;" class="heart-fill-icon mt-1 mr-2 ml-2 w-7 cursor-pointer sm:w-7" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                    <path fill="none" d="M0 0H24V24H0z" />
                                                    <path d="M12.001 4.529c2.349-2.109 5.979-2.039 8.242.228 2.262 2.268 2.34 5.88.236 8.236l-8.48 8.492-8.478-8.492c-2.104-2.356-2.025-5.974.236-8.236 2.265-2.264 5.888-2.34 8.244-.228z" fill="rgba(231,76,60,1)" />
                                                    </svg>

                                                    <svg class="mt-1 mr-2 ml-2 w-7 cursor-pointer sm:w-7" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" ><path fill="none" d="M0 0h24v24H0z"/><path d="M10 3h4a8 8 0 1 1 0 16v3.5c-5-2-12-5-12-11.5a8 8 0 0 1 8-8zm2 14h2a6 6 0 1 0 0-12h-4a6 6 0 0 0-6 6c0 3.61 2.462 5.966 8 8.48V17z" fill="rgba(47,204,113,1)"/></svg>
                                                    <svg class="mt-1 mr-2 ml-2 w-7 cursor-pointer sm:w-7" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="none" d="M0 0h24v24H0z"/><path d="M13.12 17.023l-4.199-2.29a4 4 0 1 1 0-5.465l4.2-2.29a4 4 0 1 1 .959 1.755l-4.2 2.29a4.008 4.008 0 0 1 0 1.954l4.199 2.29a4 4 0 1 1-.959 1.755zM6 14a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm11-6a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm0 12a2 2 0 1 0 0-4 2 2 0 0 0 0 4z" fill="rgba(47,204,113,1)"/></svg>

                                                </div>
                                                <!-- Save Iteraction If else -->
                                                <svg class="save-icon mt-1 mr-2 w-6 cursor-pointer sm:w-7" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="none" d="M0 0h24v24H0z"/><path d="M5 2h14a1 1 0 0 1 1 1v19.143a.5.5 0 0 1-.766.424L12 18.03l-7.234 4.536A.5.5 0 0 1 4 22.143V3a1 1 0 0 1 1-1zm13 2H6v15.432l6-3.761 6 3.761V4z" fill="rgba(47,204,113,1)"/></svg>
                                                <svg style="display: none;" class="save-fill-icon mt-1 mr-2 w-6 cursor-pointer sm:w-7" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                                <path fill="none" d="M0 0h24v24H0z" />
                                                <path d="M5 2h14a1 1 0 0 1 1 1v19.143a.5.5 0 0 1-.766.424L12 18.03l-7.234 4.536A.5.5 0 0 1 4 22.143V3a1 1 0 0 1 1-1z" fill="rgba(47,204,113,1)" />
                                                </svg>
                                            </div>
                                            <!-- Iteraction  -->
                                            <div class="text-sm">
                                                <div class="ml-4">
                                                    <p>
                                                        <span class="font-bold">312 likes</span>
                                                        <span class="text-sm">Người thích: tungba.103 và 25 người khác</span>
                                                    </p>
                                                    <p class="mt-1 mb-2 text-xs text-gray-500">14 giờ trước</p>
                                                </div>
                                                <div class="relative flex justify-between border-gray-300 p-2 sm:border-t">
                                                    <div class="flex items-center">
                                                        <img class="mr-3 h-8 w-8 rounded-full" src="avatar/${sessionScope.user.avatar}" alt="" />
                                                        <form class="" action="comment">
                                                            <input class="w-56 focus:outline-none" type="text" placeholder="Thêm bình luận..." />
                                                            <button class="absolute top-2 py-1 px-2 right-2  rounded-lg bg-emerald-400 hover:bg-emerald-500 font-bold">Post</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="absolute top-2 right-4 sm:right-8 text-2xl sm:text-white cursor-pointer opacity-80 hover:opacity-100">X</div>
                        </div>
                    </div>
                </c:forEach>
            </div>

        </div>
    </body>
    <script src="javascript/profile.js"></script>
    <script>
        var post = document.getElementsByClassName("post")
        var postdetail = document.getElementsByClassName("postdetail")
        var postdetailContainer = document.getElementsByClassName("postdetail-container")
        for (let i = 0; i < post.length; i++) {
            if (i != null) {
                post[i].addEventListener("click", function () {
                    postdetail[i].style.visibility = "visible";
                })

                document.addEventListener("click", function (e) {
                    if (!postdetailContainer[i].contains(e.target) && !post[i].contains(e.target)) {
                        postdetail[i].style.visibility = "hidden";
                    }
                })
            }
        }


    </script>
</html>

