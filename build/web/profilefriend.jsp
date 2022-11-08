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
        <title>Profile Friend</title>
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>
        
        <!-- Container  -->
        <div class="-z-10 min-h-screen bg-gray-50">
            <div class="2xl:mx-80 xl:mx-52 sm:mx-12 pt-12 sm:pt-20">
                <div class="mt-4">
                    <img id="avatar" class="float-left h-20 w-20 sm:h-40 sm:w-40 mx-6 sm:mx-12 rounded-full cursor-pointer" src="avatar/${requestScope.searchedUser.avatar}" alt="" />
                    <div class="">
                        <div class="flex flex-row justify-start items-center mb-2 sm:mb-5">
                            <p class="text-xl sm:text-3xl font-thin">${requestScope.searchedUser.username}</p>
                            <div class="flex sm:ml-0 text-sm sm:text-base items-center">
                                <a href="" class="rounded-md flex justify-center items-center border border-gray-400 h-7 px-1 sm:px-2 py-2 sm:py-2 ml-4 font-bold cursor-pointer bg-gray-50">Message</a>
                                <p id="unfollow-btn" class="rounded-md flex justify-center items-center border border-gray-400 h-7 px-1 sm:px-2 py-2 sm:py-2 ml-2 font-bold cursor-pointer bg-gray-50">
                                    <i class="ri-user-follow-line"></i>
                                </p>
                            </div>

                        </div>
                        <div class="ml-32 sm:ml-0 flex justify-start text-xl mb-2 sm:mb-5">
                            <p class=" text-sm sm:text-xl mr-4 sm:mr-16"><span class="mr-1 font-bold">${requestScope.posts.size()}</span>${requestScope.posts.size() > 1 ? "posts" : "post"}</p>     
                            <div class="relative text-sm sm:text-xl mr-4 sm:mr-16">
                               <p id="icon-listfollowers" class=" cursor-pointer"><span class="mr-1 font-bold">${requestScope.followers.size()}</span>${requestScope.followers.size() > 1 ? "followers" : "follower"}</p>
                                <!-- Subnav list followers  -->
                                <div id="subnav-listfollowers" class="absolute top-8 -right-14 min-h-fit w-72 max-h-96 overflow-y-scroll bg-white rounded-lg py-1 border border-gray-300 shadow-md"  style="visibility:hidden" >
                                    <p class="flex justify-center font-bold text-base p-1 border-b border-gray-400">Followers</p>
                                    <c:forEach items="${requestScope.followers}" var="f">
                                        <div class="flex justify-between items-center p-1">
                                            <div class="flex justify-start items-center ml-1">
                                                <img class="w-10 h-10 rounded-full" src="avatar/${f.user.avatar}" alt=""> 
                                                <div class="ml-2">
                                                    <a class="text-sm font-bold" href="profile?username=${f.user.username}">${f.user.username}</a>
                                                    <p class="text-base">${f.user.name}</p>
                                                </div>
                                            </div>
                                            <a href="#" class="float-right py-0.5 px-2 mr-2 rounded-md border border-gray-400 font-bold text-sm cursor-pointer bg-gray-50">Following</a>
                                        </div>
                                        <div class="flex justify-between items-center p-1">
                                            <div class="flex justify-start items-center ml-1">
                                                <img class="w-10 h-10 rounded-full" src="avatar/${f.user.avatar}" alt=""> 
                                                <div class="ml-2">
                                                    <a class="text-sm font-bold" href="profile?id=${f.user.userid}">${f.user.username}</a>
                                                    <p class="text-base">${f.user.name}</p>
                                                </div>
                                            </div>
                                            <a href="#" class="float-right py-0.5 px-2 mr-2 rounded-md border border-gray-400 font-bold text-sm cursor-pointer bg-gray-50">Requesting</a>
                                        </div>
                                        <div class="flex justify-between items-center p-1">
                                            <div class="flex justify-start items-center ml-1">
                                                <img class="w-10 h-10 rounded-full" src="avatar/${f.user.avatar}" alt=""> 
                                                <div class="ml-2">
                                                    <a class="text-sm font-bold" href="profile?id=${f.user.userid}">${f.user.username}</a>
                                                    <p class="text-base">${f.user.name}</p>
                                                </div>
                                            </div>
                                            <a href="#" class="float-right py-0.5 px-2 mr-2 rounded-md border border-gray-400 font-bold text-sm cursor-pointer bg-emerald-300">Follow</a>
                                        </div>
                                    </c:forEach>                                   
                                </div>
                            </div>
                            <div class="relative text-sm sm:text-xl mr-4 sm:mr-16">
                                <p id="icon-listfollowing" class="  cursor-pointer"><span class="mr-1 font-bold">${requestScope.followings.size()}</span>following</p>
                                <!-- Subnav list Following  -->
                                <div id="subnav-listfollowing" class="absolute top-8 -right-4 w-72 min-h-fit max-h-96 bg-white rounded-lg py-1 border border-gray-300 shadow-md"  style="visibility:hidden">
                                    <p class="flex justify-center font-bold text-base p-1 border-b border-gray-400">Following</p>
                                    <c:forEach items="${requestScope.followings}" var="f">
                                        <div class="flex justify-between items-center p-1">
                                            <div class="flex justify-start items-center ml-1">
                                                <img class="w-10 h-10 rounded-full" src="avatar/${f.following.avatar}" alt=""> 
                                                <div class="ml-2">
                                                    <a class="text-sm font-bold" href="profile?username=${f.following.username}">${f.friend.username}</a>
                                                    <p class="text-base">${f.following.name}</p>
                                                </div>
                                            </div>
                                            <p class="float-right py-0.5 px-2 mr-2 rounded-md border border-gray-400 font-bold text-sm cursor-pointer bg-gray-50">Following</p>
                                        </div>
                                        <div class="flex justify-between items-center p-1">
                                            <div class="flex justify-start items-center ml-1">
                                                <img class="w-10 h-10 rounded-full" src="avatar/${f.following.avatar}" alt=""> 
                                                <div class="ml-2">
                                                    <a class="text-sm font-bold" href="profile?id=${f.following.userid}">${f.following.username}</a>
                                                    <p class="text-base">${f.following.name}</p>
                                                </div>
                                            </div>
                                            <p class="float-right py-0.5 px-2 mr-2 rounded-md border border-gray-400 font-bold text-sm cursor-pointer bg-gray-50">Requesting</p>
                                        </div>
                                        <div class="flex justify-between items-center p-1">
                                            <div class="flex justify-start items-center ml-1">
                                                <img class="w-10 h-10 rounded-full" src="avatar/${f.following.avatar}" alt=""> 
                                                <div class="ml-2">
                                                    <a class="text-sm font-bold" href="profile?id=${f.following.userid}">${f.following.username}</a>
                                                    <p class="text-base">${f.following.name}</p>
                                                </div>
                                            </div>
                                            <p class="float-right py-0.5 px-2 mr-2 rounded-md border border-gray-400 font-bold text-sm cursor-pointer bg-emerald-300">Follow</p>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div class="ml-32 mb-2 sm:mb-6">
                            <p class=" text-sm sm:text-xl font-bold" >${requestScope.searchedUser.name}</p>
                            <p class=" text-xs sm:text-base">${requestScope.searchedUser.bio}</p>
                        </div>
                    </div>
                </div>
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
            <div class="sm:pt-10">
                <div class ="flex justify-center">
                    <img class="w-28 h-28 xl:w-72 xl:h-72 2xl:h-96 2xl:w-96 m-2 2xl:m-4 cursor-pointer" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
                    <img class="w-28 h-28 xl:w-72 xl:h-72 2xl:h-96 2xl:w-96 m-2 2xl:m-4 cursor-pointer" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
                    <img class="w-28 h-28 xl:w-72 xl:h-72 2xl:h-96 2xl:w-96 m-2 2xl:m-4 cursor-pointer" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
                </div>
                <div class ="flex justify-center">
                    <img class="w-28 h-28 xl:w-72 xl:h-72 2xl:h-96 2xl:w-96 m-2 2xl:m-4 cursor-pointer" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
                    <img class="w-28 h-28 xl:w-72 xl:h-72 2xl:h-96 2xl:w-96 m-2 2xl:m-4 cursor-pointer" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
                    <img class="w-28 h-28 xl:w-72 xl:h-72 2xl:h-96 2xl:w-96 m-2 2xl:m-4 cursor-pointer" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
                </div>
            </div>
        </div>
    </body>
    <script src="javascript/profile.js"></script>
    <script>
        var unfollowBtn = document.getElementById("unfollow-btn");
        unfollowBtn.addEventListener("click", function() {
            var accepted = confirm("Do you want to unfollow?")
            if(accepted) {
                // Do something
            }
        })
    </script>
</html>

