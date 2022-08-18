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
        <div class="flex w-full sm:justify-center justify-between items-center 
             pt-1 pl-4 pr-4 text-2xl sm:border-b sm:pb-1 sm:pt-1 sm:text-2xl">

            <!-- Logo -->
            <a class="" href="http://localhost:9999/SocialNetwork/">Instagram</a>

            <!-- Search  -->
            <div class="sm:flex hidden">
                <input class="bg-gray-200 p-1 pl-4 rounded-lg text-sm focus:outline-none 
                       2xl:ml-60 xl:ml-44 sm:ml-28" type="text" placeholder="Seach..." >
            </div>

            <!-- Icon  -->
            <div class="relative 2xl:ml-60 xl:ml-44 sm:ml-28 flex items-center">
                <a class="absolute -top-1 right-20" href="#">
                    <i class="bi bi-plus-square mt-0 mr-3 hover:text-blue-500"></i>
                </a>
                <a class="absolute -top-1 right-10" href="#">
                    <i class="bi bi-chat mt-0 mr-3 hover:text-blue-500"></i>
                </a>
                <!-- Subnav  -->
                <div>
                    <img class="relative ml-2 h-8 w-8 cursor-pointer rounded-full transition"
                         id="avatar" src="avatar/${sessionScope.user.avatar}" alt="" />
                    <div id="subnav" class=" fixed mt-1 top-10 2xl:right-96 2xl:mr-40 xl:right-80 
                         sm:right-40 right-2 h-40 w-48 bg-gray-100 text-xl rounded-lg" style="visibility:hidden;">
                        <div class="cursor-pointer pl-5 pt-1 pb-2 hover:bg-gray-200 hover:rounded-lg">
                            <i class="bi bi-person-circle mr-3"></i>
                            Profile
                        </div>
                        <div class="cursor-pointer pl-5 pt-1 pb-2 hover:bg-gray-200 hover:rounded-lg">
                            <i class="bi bi-save2 mr-3"></i>
                            Save
                        </div>
                        <div class="cursor-pointer pl-5 pt-1 pb-2 hover:bg-gray-200 hover:rounded-lg">
                            <i class="bi bi-gear-wide mr-3"></i>
                            Settings
                        </div>
                        <div class="cursor-pointer pl-5 pt-1 pb-2 hover:bg-gray-200 hover:rounded-lg">
                            <a href="logout">Log out</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Container -->
    <div class="sm:bg-gray-50 pt-10 sm:pt-14">
        <!-- Story  -->
        <div class="mx-auto flex w-full flex-col sm:w-3/5 lg:w-2/5">
            <div class="mt-4 border-b border-gray-100 bg-white pb-1 sm:mb-1 sm:rounded-lg 
                 sm:border sm:border-gray-300 sm:pt-4 sm:pl-3 sm:pb-4">
                <ul class="ml-2 flex space-x-2 overflow-x-scroll">
                    <!-- Story item start:: User -->
                    <li class="flex flex-col items-center space-y-1 min-w-fit">
                        <div class="relative rounded-full bg-gradient-to-br from-red-500 
                             to-yellow-500 p-1">
                            <a class="block rounded-full bg-white p-1" href="#">
                                <img class="h-12 w-12 rounded-full transition hover:-rotate-2" 
                                     src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
                            </a>
                            <button class="add-story-btn absolute bottom-0 right-0 flex h-6 
                                    w-6 items-center justify-center rounded-full border-4 border-white 
                                    bg-blue-500 font-semibold text-white hover:bg-blue-700">+</button>
                        </div>
                        <a class="text-black" href="#">Cat_one</a>
                    </li>

                    <!-- Story item start  -->
                    <li class="flex flex-col items-center space-y-1 min-w-fit">
                        <div class="rounded-full bg-gradient-to-br from-red-500 to-yellow-500 p-1">
                            <a class="block rounded-full bg-white p-1" href="#">
                                <img class="h-12 w-12 rounded-full transition hover:-rotate-2" 
                                     src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
                            </a>
                        </div>
                        <a class="text-black" href="#">Cat_two</a>
                    </li>
                </ul>
            </div>

            <!-- Post -->
            <div class="post sm:mt-3">
                <div>
                    <div class="bg-white sm:rounded-md sm:border sm:border-gray-300">
                        <div class="flex items-center justify-between pt-2 pb-2">
                            <div class="flex items-center">
                                <img class="w-10 h-10 rounded-full ml-3 mr-3" 
                                     src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
                                <div>
                                    <p class="" style="font-size:14px; font-weight:700;">git_zno</p>
                                    <p class="" style="font-size:12px;">COMPLEX 01</p>
                                </div>
                            </div>
                            <i class="bi bi-three-dots-vertical flex items-center text-2xl"></i>
                        </div>
                        <div>
                            <img class="w-380 h-380 md:w-500 md:h-500" 
                                  src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="">
                        </div>
                        <div class="flex justify-between">
                            <div class="flex justify-between">
                                <i class="bi bi-heart mr-2 ml-2 text-2xl"></i>
                                <i class="bi bi-chat-right mr-2 ml-2 text-2xl"></i>
                                <i class="bi bi-share mr-2 ml-2 text-2xl"></i>
                            </div>
                            <i class="bi bi-bookmark-plus mr-2 text-2xl"></i>
                        </div>
                        <div class="ml-2">
                            <p>NgÆ°á»i thÃ­ch: tungba.103 vÃ  25 ngÆ°á»i khÃ¡c</p>
                            <p>
                                <span>kienvu</span> Tôi tá»nh dáº­y sau 2 ngÃ y liá»t giÆ°á»ng vÃ¬ cá» gáº¯ng tiáº¿t kiá»m tiá»n...
                                <span class="cursor-pointer text-gray-500">xem thÃªm</span>
                            </p>
                            <a href="#" class="text-gray-500">Xem 256 bÃ¬nh luáº­n</a>
                            <div class="mr-2 mt-1 flex justify-between">
                                <div class="flex">
                                    <img class="mr-3 h-8 w-8 rounded-full" 
                                         src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="" />
                                    <input type="text" placeholder="ThÃªm bÃ¬nh luáº­n..." />
                                </div>
                                <div>
                                    <i class="bi bi-heart-fill mr-2"></i>
                                    <i class="bi bi-plus-circle"></i>
                                </div>
                            </div>
                            <p class="mt-1 mb-2 text-gray-500" style="font-size:10px">14 giá» trÆ°á»c</p>
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
    document.getElementById("avatar").addEventListener("click", function () {
        document.getElementById("subnav").style.visibility = "visible";
    })
    document.addEventListener("click", function (e) {
        if (!document.getElementById("subnav").contains(e.target) && !document.getElementById("avatar").contains(e.target)) {
            document.getElementById("subnav").style.visibility = "hidden";
        }
    })
</script>
</html>
