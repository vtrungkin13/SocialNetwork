<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.2.0/fonts/remixicon.css" rel="stylesheet" />
        <!-- <link rel="stylesheet" href="style.css"> -->
        <script src="https://cdn.tailwindcss.com"></script>
        <title>Home</title>
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>

        <!-- Container -->
        <div class="pt-12 sm:bg-gray-50 sm:pt-14">
            <div class="mx-auto flex w-full flex-col md:w-3/5 xl:w-2/5">
                <!-- Story  -->
                <div class="flex justify-start overflow-x-hidden bg-white p-1 sm:rounded-md sm:border sm:border-gray-300 sm:p-2">
                    <div class="mr-2 min-w-fit">
                        <div class="icon-story cursor-pointer rounded-full bg-gradient-to-tr from-cyan-400 via-emerald-400 to-lime-400 p-0.5 shadow-sm shadow-gray-400 ">
                            <img class="h-16 w-16 rounded-full bg-white p-0.5 sm:h-16 sm:w-16" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow" />
                        </div>
                        <p class="flex justify-center text-xs sm:text-sm">2022</p>
                    </div>
                    <div class="mr-2 min-w-fit">
                        <div class="icon-story cursor-pointer rounded-full bg-gradient-to-tr from-cyan-400 via-emerald-400 to-lime-400 p-0.5 shadow-sm shadow-gray-400 ">
                            <img class="h-16 w-16 rounded-full bg-white p-0.5 sm:h-16 sm:w-16" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow" />
                        </div>
                        <p class="flex justify-center text-xs sm:text-sm">2022</p>
                    </div>
                    <div class="mr-2 min-w-fit">
                        <div class="icon-story cursor-pointer rounded-full bg-gradient-to-tr from-cyan-400 via-emerald-400 to-lime-400 p-0.5 shadow-sm shadow-gray-400 ">
                            <img class="h-16 w-16 rounded-full bg-white p-0.5 sm:h-16 sm:w-16" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow" />
                        </div>
                        <p class="flex justify-center text-xs sm:text-sm">2022</p>
                    </div>
                </div>
                <!-- Post -->
                <c:forEach items="${requestScope.posts}" var="p">
                    <div class="post sm:my-3">
                        <div>
                            <div class="border border-gray-300 bg-white sm:rounded-md">
                                <div class="flex items-center justify-between py-1 sm:py-2">
                                    <div class="flex items-center">
                                        <a href="#"> <img class="h-8 w-8 sm:w-10 sm:h-10 rounded-full ml-3 mr-3" src="avatar/${p.user.avatar}" alt=""> </a>
                                        <a class="text-base font-bold sm:text-xl" href="#">${p.user.username}</a>
                                    </div>
                                    <i class="bi bi-three-dots-vertical flex cursor-pointer items-center text-xl sm:text-3xl"></i>
                                </div>
                                <div>
                                    <img class="w-380 h-380 md:w-500 md:h-500" src="post-image/${p.image}" alt="" />     
                                </div>
                                <div class="flex justify-between sm:mt-1">
                                    <div class="flex justify-between">
                                        <!-- Heart Iteraction If else -->
                                        <svg class="heart-icon mt-1 mr-2 ml-2 w-7 cursor-pointer sm:w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="none" d="M0 0H24V24H0z"/><path d="M12.001 4.529c2.349-2.109 5.979-2.039 8.242.228 2.262 2.268 2.34 5.88.236 8.236l-8.48 8.492-8.478-8.492c-2.104-2.356-2.025-5.974.236-8.236 2.265-2.264 5.888-2.34 8.244-.228zm6.826 1.641c-1.5-1.502-3.92-1.563-5.49-.153l-1.335 1.198-1.336-1.197c-1.575-1.412-3.99-1.35-5.494.154-1.49 1.49-1.565 3.875-.192 5.451L12 18.654l7.02-7.03c1.374-1.577 1.299-3.959-.193-5.454z" fill="rgba(47,204,113,1)"/></svg>
                                        <svg style="display: none;" class="heart-fill-icon mt-1 mr-2 ml-2 w-7 cursor-pointer sm:w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                        <path fill="none" d="M0 0H24V24H0z" />
                                        <path d="M12.001 4.529c2.349-2.109 5.979-2.039 8.242.228 2.262 2.268 2.34 5.88.236 8.236l-8.48 8.492-8.478-8.492c-2.104-2.356-2.025-5.974.236-8.236 2.265-2.264 5.888-2.34 8.244-.228z" fill="rgba(231,76,60,1)" />
                                        </svg>

                                        <svg class="mt-1 mr-2 ml-2 w-7 cursor-pointer sm:w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" ><path fill="none" d="M0 0h24v24H0z"/><path d="M10 3h4a8 8 0 1 1 0 16v3.5c-5-2-12-5-12-11.5a8 8 0 0 1 8-8zm2 14h2a6 6 0 1 0 0-12h-4a6 6 0 0 0-6 6c0 3.61 2.462 5.966 8 8.48V17z" fill="rgba(47,204,113,1)"/></svg>
                                        <svg class="mt-1 mr-2 ml-2 w-7 cursor-pointer sm:w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="none" d="M0 0h24v24H0z"/><path d="M13.12 17.023l-4.199-2.29a4 4 0 1 1 0-5.465l4.2-2.29a4 4 0 1 1 .959 1.755l-4.2 2.29a4.008 4.008 0 0 1 0 1.954l4.199 2.29a4 4 0 1 1-.959 1.755zM6 14a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm11-6a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm0 12a2 2 0 1 0 0-4 2 2 0 0 0 0 4z" fill="rgba(47,204,113,1)"/></svg>

                                    </div>
                                    <!-- <i class="cursor-pointer ri-bookmark-line mr-2 text-3xl opacity-95"></i> -->
                                    <!-- Save Iteraction If else -->
                                    <svg class="save-icon mt-1 mr-2 w-6 cursor-pointer sm:w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="none" d="M0 0h24v24H0z"/><path d="M5 2h14a1 1 0 0 1 1 1v19.143a.5.5 0 0 1-.766.424L12 18.03l-7.234 4.536A.5.5 0 0 1 4 22.143V3a1 1 0 0 1 1-1zm13 2H6v15.432l6-3.761 6 3.761V4z" fill="rgba(47,204,113,1)"/></svg>
                                    <svg style="display: none;" class="save-fill-icon mt-1 mr-2 w-6 cursor-pointer sm:w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                    <path fill="none" d="M0 0h24v24H0z" />
                                    <path d="M5 2h14a1 1 0 0 1 1 1v19.143a.5.5 0 0 1-.766.424L12 18.03l-7.234 4.536A.5.5 0 0 1 4 22.143V3a1 1 0 0 1 1-1z" fill="rgba(47,204,113,1)" />
                                    </svg>
                                </div>
                                <div class="text-sm sm:text-xl">
                                    <div class="ml-4">
                                        <p>
                                            <span class="font-bold">312 likes</span>
                                            <!-- <span>Người thích: tungba.103 và 25 người khác</span> -->
                                        </p>
                                        <p>
                                            <span class="font-bold">${p.user.username}</span>
                                            <span>${p.content}</span>
                                            <!--<span class="cursor-pointer text-gray-500">xem thêm</span>-->
                                        </p>
                                        <!-- Bình luận  -->
                                        <a href="#" class="text-gray-500">Xem tất cả 256 bình luận</a>
                                        <p>
                                            <span class="font-bold">kienvu</span>
                                            <span>Tớ tỉnh dậy sau 2 ngày liệt giường vì cố gắng tiết kiệm tiền...</span>
                                        </p>
                                        <p>
                                            <span class="font-bold">kienvu</span>
                                            <span>Tớ tỉnh dậy sau 2 ngày liệt giường vì cố gắng tiết kiệm tiền...</span>
                                        </p>
                                        <p class="mt-1 mb-2 text-xs text-gray-500 sm:text-base">dd/MM/yyyy</p>

                                    </div>
                                    <div class="relative flex justify-between border-gray-300 p-2 sm:border-t sm:p-4">
                                        <div class="flex items-center">
                                            <img class="mr-3 h-6 w-6 rounded-full sm:h-12 sm:w-12" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="" />
                                            <form class="" action="comment">
                                                <input class="w-36 focus:outline-none sm:w-80 2xl:w-96" type="text" placeholder="Thêm bình luận..." />
                                                <button class="absolute top-0 right-2 rounded-lg bg-emerald-400 hover:bg-emerald-500 py-1 px-2 font-bold sm:top-5 sm:right-4 sm:px-4">Post</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>


            </div>
        </div>
    </body>
    <script>
        // Like + Save
        var heartIconHandler = document.getElementsByClassName("heart-icon");
        var heartFillIconHandler = document.getElementsByClassName("heart-fill-icon");
        var saveIconHandler = document.getElementsByClassName("save-icon");
        var saveFillIconHandler = document.getElementsByClassName("save-fill-icon");
   

        // Heart & Save Iteraction
        // Heart
        for (let i = 0; i < heartIconHandler.length; i++) {
            if (i !== null) {
                heartIconHandler[i].addEventListener("click", function () {
                    heartIconHandler[i].style.display = "none";
                    heartFillIconHandler[i].style.display = "block";
                });
            }
        }

        for (let i = 0; i < heartFillIconHandler.length; i++) {
            if (i !== null) {
                heartFillIconHandler[i].addEventListener("click", function () {
                    heartFillIconHandler[i].style.display = "none";
                    heartIconHandler[i].style.display = "block";
                });
            }
        }
        // Save
        for (let i = 0; i < saveIconHandler.length; i++) {
            if (i !== null) {
                saveIconHandler[i].addEventListener("click", function () {
                    saveIconHandler[i].style.display = "none";
                    saveFillIconHandler[i].style.display = "block";
                });
            }
        }

        for (let i = 0; i < saveFillIconHandler.length; i++) {
            if (i !== null) {
                saveFillIconHandler[i].addEventListener("click", function () {
                    saveFillIconHandler[i].style.display = "none";
                    saveIconHandler[i].style.display = "block";
                });
            }
        }   

    </script>
</html>

