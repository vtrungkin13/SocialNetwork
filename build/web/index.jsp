<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page import="jakarta.servlet.http.Cookie"%> 
<%@page import="model.User"%> 
<%@page import="dal.userDAO"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.2.0/fonts/remixicon.css" rel="stylesheet" />
        <script src="https://cdn.tailwindcss.com"></script>
        <title>Home</title>
    </head>
    <body>
        <!-- Redirect to sign in -->
        <%
            Cookie[] cookies = request.getCookies();
            String username = "";
            boolean rememberUser = false;
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("user")) {
                        username = cookie.getValue();
                        rememberUser = true;
                    }
                }
            }
            if (rememberUser) {
                userDAO ud = new userDAO();
                User u = ud.getUserByUsername(username);
                session.setAttribute("user", u);
        %>

        <!-- Navigation -->
        <div class="fixed top-0 left-0 right-0 z-40 bg-white">
            <div class="flex w-full items-center justify-between pt-1 pl-4 pr-4 text-2xl sm:justify-center sm:border-b sm:pb-2 sm:pt-3 sm:text-3xl">
                <!-- Logo -->
                <a class="font-serif md:mr-12 xl:mr-20 2xl:mr-32" href="home">Instagram</a>

                <!-- Search  -->
                <div class="hidden sm:flex">
                    <input class="rounded-lg bg-gray-200 p-1 pl-4 text-sm focus:outline-none" type="text" placeholder="Seach..." />
                </div>

                <!-- Navbar  -->
                <div class="flex md:ml-12 xl:ml-20 2xl:ml-40">
                    <a id="icon-newpost" href="#">
                        <i class="ri-add-box-line mr-2 text-3xl"></i>
                    </a>
                    <div id="icon-friend" class="relative">
                        <a href="#">
                            <i class="ri-user-add-fill mr-2 text-2xl"></i>
                        </a>
                        <!-- Friend Subnav  -->
                        <div id="subnav-friend" class="absolute top-10 -right-28 rounded-md bg-white text-base shadow shadow-gray-400" style="width:500px; visibility:hidden;">
                            <div class="flex cursor-pointer items-center justify-center p-3 hover:bg-gray-50">
                                <p class="text-lg font-bold">Get new friend</p>
                                <i class="ri-arrow-right-s-line text-lg font-bold"></i>
                            </div>
                            <div class="border-t pt-1">
                                <p class="pl-3 font-bold">Follow request</p>
                                <!-- loop -->
                                <div class="cursor-pointer p-3 pl-4">
                                    <div class="relative flex items-center justify-start">
                                        <img class="mr-2 inline-flex h-10 w-10 items-center justify-start rounded-full transition" id="avatar" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
                                        <div class="">
                                            <p class="font-bold">li.ta2305</p>
                                            <p class="text-sm text-gray-400">Lita</p>
                                        </div>
                                        <span class="absolute right-20 mr-1 rounded-md border border-gray-300 bg-blue-500 p-1 px-4 text-sm font-bold text-white hover:bg-blue-600">Confirm</span>
                                        <span class="absolute right-0 rounded-md border border-gray-300 bg-white p-1 px-4 text-sm font-bold hover:bg-gray-50">Delete</span>
                                    </div>
                                </div>
                                <div class="cursor-pointer p-3 pl-4">
                                    <div class="relative flex items-center justify-start">
                                        <img class="mr-2 inline-flex h-10 w-10 items-center justify-start rounded-full transition" id="avatar" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
                                        <div class="">
                                            <p class="font-bold">li.ta2305</p>
                                            <p class="text-sm text-gray-400">Lita</p>
                                        </div>
                                        <span class="absolute right-20 mr-1 rounded-md border border-gray-300 bg-blue-500 p-1 px-4 text-sm font-bold text-white hover:bg-blue-600">Confirm</span>
                                        <span class="absolute right-0 rounded-md border border-gray-300 bg-white p-1 px-4 text-sm font-bold hover:bg-gray-50">Delete</span>
                                    </div>
                                </div>
                                <div class="cursor-pointer p-3 pl-4">
                                    <div class="relative flex items-center justify-start">
                                        <img class="mr-2 inline-flex h-10 w-10 items-center justify-start rounded-full transition" id="avatar" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
                                        <div class="">
                                            <p class="font-bold">li.ta2305</p>
                                            <p class="text-sm text-gray-400">Lita</p>
                                        </div>
                                        <span class="absolute right-20 mr-1 rounded-md border border-gray-300 bg-blue-500 p-1 px-4 text-sm font-bold text-white hover:bg-blue-600">Confirm</span>
                                        <span class="absolute right-0 rounded-md border border-gray-300 bg-white p-1 px-4 text-sm font-bold hover:bg-gray-50">Delete</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="" href="#">
                        <i class="ri-chat-3-line mr-2 text-3xl"></i>
                    </a>
                    <div id="icon-notif" class="relative">
                        <a class="" href="#">
                            <svg class="mt-0.5 mr-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="30" height="30">
                            <path fill="none" d="M0 0H24V24H0z" />
                            <path d="M12.001 4.529c2.349-2.109 5.979-2.039 8.242.228 2.262 2.268 2.34 5.88.236 8.236l-8.48 8.492-8.478-8.492c-2.104-2.356-2.025-5.974.236-8.236 2.265-2.264 5.888-2.34 8.244-.228zm6.826 1.641c-1.5-1.502-3.92-1.563-5.49-.153l-1.335 1.198-1.336-1.197c-1.575-1.412-3.99-1.35-5.494.154-1.49 1.49-1.565 3.875-.192 5.451L12 18.654l7.02-7.03c1.374-1.577 1.299-3.959-.193-5.454z" />
                            </svg>
                            <svg class="mt-0.5 mr-1 hidden" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="30" height="30">
                            <path fill="none" d="M0 0H24V24H0z" />
                            <path d="M12.001 4.529c2.349-2.109 5.979-2.039 8.242.228 2.262 2.268 2.34 5.88.236 8.236l-8.48 8.492-8.478-8.492c-2.104-2.356-2.025-5.974.236-8.236 2.265-2.264 5.888-2.34 8.244-.228z" />
                            </svg>
                        </a>
                        <!-- Notification Subnav  -->
                        <div id="subnav-notif" class="absolute top-10 -right-10 rounded-md bg-white text-base shadow shadow-gray-400" style="width:500px; visibility:hidden;">
                            <!-- Loop  -->
                            <div class="cursor-pointer p-3 hover:bg-gray-50">
                                <img class="mr-1 inline-flex h-10 w-10 items-center justify-start rounded-full transition" id="avatar" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
                                <span><span class="mr-1 font-bold">kienvu</span>started following you. <span class="text-gray-400">1d</span></span>
                                <span class="float-right mr-4 rounded-md border border-gray-300 bg-white p-1 px-6">Following</span>
                            </div>
                            <div class="cursor-pointer p-3 hover:bg-gray-50">
                                <img class="mr-1 inline-flex h-10 w-10 items-center justify-start rounded-full transition" id="avatar" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
                                <span><span class="mr-1 font-bold">kienvu</span>liked your photo. <span class="text-gray-400">2d</span></span>
                                <img class="float-right mr-4 h-10 w-10 items-center justify-start transition" id="avatar" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
                            </div>
                            <div class="cursor-pointer p-3 hover:bg-gray-50">
                                <img class="mr-1 inline-flex h-10 w-10 items-center justify-start rounded-full transition" id="avatar" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
                                <span><span class="mr-1 font-bold">kienvu</span>commented in your photo. <span class="text-gray-400">4d</span></span>
                                <img class="float-right mr-4 h-10 w-10 items-center justify-start transition" id="avatar" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
                            </div>
                        </div>
                    </div>
                    <!--User subnav  -->
                    <div class="relative">
                        <img id="icon-user" class="ml-2 h-8 w-8 cursor-pointer rounded-full transition" src="avatar/${sessionScope.user.avatar}" alt="cute cat" />
                        <div id="subnav-user" class="absolute top-10 right-0 h-48 w-48 rounded-lg bg-white text-xl shadow-sm shadow-gray-600" style="visibility:hidden;" >
                            <div class="flex items-center cursor-pointer pl-5 pt-1 pb-2 hover:rounded-lg hover:bg-gray-200">
                                <i class="ri-map-pin-user-line mr-3 text-3xl"></i>
                                <a href="profile">Profile</a>
                            </div>
                            <div class="flex items-center cursor-pointer pl-5 pt-1 pb-2 hover:rounded-lg hover:bg-gray-200">
                                <i class="ri-bookmark-line mr-3 text-3xl"></i>
                                Save
                            </div>
                            <div class="flex items-center cursor-pointer pl-5 pt-1 pb-2 hover:rounded-lg hover:bg-gray-200">
                                <i class="ri-settings-5-line mr-3 text-3xl"></i>
                                <a href="edit">Settings</a>
                            </div>
                            <div class="flex items-center cursor-pointer font-bold h-12 pl-14 pt-1 pb-2 hover:rounded-lg hover:bg-gray-200">
                                <a href="logout">Log out</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- New post  -->
        <div id="subnav-newpost" class="fixed z-50 h-screen w-screen bg-gray-600 bg-opacity-80" style="visibility:hidden">
            <div id="subnav-newpost-container" class="fixed rounded-3xl bg-white opacity-100" style="width: 500px; height: 720px;top: 50%;left: 50%;margin-top: -350px;margin-left: -250px;">
                <div id="newpost-close" class="absolute top-0 right-4 mt-1 cursor-pointer text-4xl opacity-60 hover:opacity-100">x</div>
                <div class="flex justify-center border-b border-gray-600 py-3 text-2xl">Create new post</div>
                <div class="mx-auto mt-5 h-96 w-96 bg-gray-100">
                    <!-- Upload image  -->
                    <img src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="" />
                </div>
                <div class="flex justify-center">
                    <i class="ri-upload-line"></i>
                </div>
                <div class="flex justify-center text-2xl">
                    <p>Drag photos and videos here</p>
                </div>
                <div class="mx-auto mt-2 flex w-40 cursor-pointer justify-center rounded-lg bg-blue-400 p-2 font-bold text-white hover:bg-blue-500">
                    <!-- Image Input  -->
                    <p>Select from Device</p>
                </div>
                <div class="flex justify-center">
                    <!-- Content  -->
                    <input class="mt-6 rounded-md border border-gray-400 p-3 shadow-md shadow-gray-400 w-72" name="" id="" maxlength="30" placeholder="What's on your mind"> </textarea>
                </div>
                <div class="flex justify-center">
                    <!-- Submit  -->
                    <button class="mt-5 rounded-lg bg-blue-400 px-8 pb-2 pt-1 text-xl font-bold text-white hover:bg-blue-500">Post</button>
                </div>
            </div>
        </div>
        <!-- Container -->
        <div class="pt-10 sm:bg-gray-50 sm:pt-14">
            <!-- Story  -->
            <div class="mx-auto flex w-full flex-col sm:w-3/5 lg:w-2/5">
                <!-- Post -->
                <div class="post sm:mt-3">
                    <div>
                        <div class="bg-white sm:rounded-md sm:border sm:border-gray-300">
                            <div class="flex items-center justify-between pt-2 pb-2">
                                <div class="flex items-center">
                                    <a href="#">
                                        <img class="w-10 h-10 rounded-full ml-3 mr-3" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
                                    </a>
                                    <div>
                                        <p class="" style="font-size:14px; font-weight:700;"><a href="#">git_zno</a></p>
                                        <p class="" style="font-size:12px;">COMPLEX 01</p>
                                    </div>
                                </div>
                                <i class="bi bi-three-dots-vertical flex items-center text-2xl"></i>
                            </div>
                            <div><img class="w-380 h-380 md:w-500 md:h-500" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt=""></div>
                            <div class="flex justify-between">
                                <div class="flex justify-between">
                                    <svg class="mt-1 mr-2 ml-2 cursor-pointer opacity-90" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="32" height="32">
                                    <path fill="none" d="M0 0H24V24H0z" />
                                    <path d="M12.001 4.529c2.349-2.109 5.979-2.039 8.242.228 2.262 2.268 2.34 5.88.236 8.236l-8.48 8.492-8.478-8.492c-2.104-2.356-2.025-5.974.236-8.236 2.265-2.264 5.888-2.34 8.244-.228zm6.826 1.641c-1.5-1.502-3.92-1.563-5.49-.153l-1.335 1.198-1.336-1.197c-1.575-1.412-3.99-1.35-5.494.154-1.49 1.49-1.565 3.875-.192 5.451L12 18.654l7.02-7.03c1.374-1.577 1.299-3.959-.193-5.454z" />
                                    </svg>
                                    <svg class="mt-1 mr-2 ml-2 hidden cursor-pointer" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="32" height="32">
                                    <path fill="none" d="M0 0H24V24H0z" />
                                    <path d="M12.001 4.529c2.349-2.109 5.979-2.039 8.242.228 2.262 2.268 2.34 5.88.236 8.236l-8.48 8.492-8.478-8.492c-2.104-2.356-2.025-5.974.236-8.236 2.265-2.264 5.888-2.34 8.244-.228z" fill="rgba(231,76,60,1)" />
                                    </svg>
                                    <svg class="mt-1 mr-2 ml-2 cursor-pointer opacity-90" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="32" height="32">
                                    <path fill="none" d="M0 0h24v24H0z" />
                                    <path d="M10 3h4a8 8 0 1 1 0 16v3.5c-5-2-12-5-12-11.5a8 8 0 0 1 8-8zm2 14h2a6 6 0 1 0 0-12h-4a6 6 0 0 0-6 6c0 3.61 2.462 5.966 8 8.48V17z" />
                                    </svg>
                                    <svg class="mt-1 mr-2 ml-2 cursor-pointer opacity-90" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="32" height="32">
                                    <path fill="none" d="M0 0h24v24H0z" />
                                    <path d="M13.12 17.023l-4.199-2.29a4 4 0 1 1 0-5.465l4.2-2.29a4 4 0 1 1 .959 1.755l-4.2 2.29a4.008 4.008 0 0 1 0 1.954l4.199 2.29a4 4 0 1 1-.959 1.755zM6 14a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm11-6a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm0 12a2 2 0 1 0 0-4 2 2 0 0 0 0 4z" />
                                    </svg>
                                </div>
                                <!-- <i class="cursor-pointer ri-bookmark-line mr-2 text-3xl opacity-95"></i> -->
                                <svg class="mt-1 mr-2 cursor-pointer opacity-95" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="28" height="28">
                                <path fill="none" d="M0 0h24v24H0z" />
                                <path d="M5 2h14a1 1 0 0 1 1 1v19.143a.5.5 0 0 1-.766.424L12 18.03l-7.234 4.536A.5.5 0 0 1 4 22.143V3a1 1 0 0 1 1-1z" fill="rgba(0,0,0,0.93)" />
                                </svg>
                            </div>
                            <div class="ml-2">
                                <p>Người thích: tungba.103 và 25 người khác</p>
                                <p><span>kienvu</span> Tớ tỉnh dậy sau 2 ngày liệt giường vì cố gắng tiết kiệm tiền...<span class="cursor-pointer text-gray-500">xem thêm</span></p>
                                <a href="#" class="text-gray-500">Xem 256 bình luận</a>
                                <div class="mr-2 mt-1 flex justify-between">
                                    <div class="flex">
                                        <img class="mr-3 h-8 w-8 rounded-full" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="" />
                                        <input type="text" placeholder="Thêm bình luận..." />
                                    </div>
                                    <div>
                                        <i class="bi bi-heart-fill mr-2"></i>
                                        <i class="bi bi-plus-circle"></i>
                                    </div>
                                </div>
                                <p class="mt-1 mb-2 text-gray-500" style="font-size:10px">14 giờ trước</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%    
            } else {
                response.sendRedirect("signin");
            }
        %>
    </body>
    <script>
        var iconFriendHandler = document.getElementById("icon-friend");
        var iconNotifHandler = document.getElementById("icon-notif");
        var iconUserHandler = document.getElementById("icon-user");
        var iconNewpostHandler = document.getElementById("icon-newpost");
        var subnavFriendHandler = document.getElementById("subnav-friend");
        var subnavNotifHandler = document.getElementById("subnav-notif");
        var subnavUserHandler = document.getElementById("subnav-user");
        var newpostHandler = document.getElementById("subnav-newpost");
        var newpostCloseHandler = document.getElementById("newpost-close");
        var subnavNewpostContainerHandler = document.getElementById("subnav-newpost-container");

        // New post handler
        iconNewpostHandler.addEventListener("click", function () {
            newpostHandler.style.visibility = "visible";
        })
        document.addEventListener("click", function (e) {
            if (!subnavNewpostContainerHandler.contains(e.target) && !iconNewpostHandler.contains(e.target)) {
                newpostHandler.style.visibility = "hidden";
            }
        })
        newpostCloseHandler.addEventListener("click", function () {
            newpostHandler.style.visibility = "hidden";
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
    </script>
</html>
