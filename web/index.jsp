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
    <!-- <link rel="stylesheet" href="style.css"> -->
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Home</title>
  </head>
  <body>
    <!-- Navigation -->
    <div class="fixed top-0 left-0 right-0 z-40 bg-gradient-to-b from-blue-400 to-cyan-400">
      <div class="flex items-center justify-between py-1 text-3xl sm:text-4xl">
        <!-- Logo -->
        <a class="ml-4 font-serif text-white" href="home">Instagram</a>

        <!-- Search  -->
        <div class="hidden md:flex">
          <form class="text-sm" action="search">
            <input class="w-80 rounded-lg bg-white p-1 pl-4 text-sm focus:outline-none" type="text" placeholder="Seach..." />
            <button class="hidden text-sm">Search</button>
          </form>
        </div>

        <!-- Navbar  -->
        <div class="mr-2 flex sm:mr-4">
          <a id="icon-newpost" href="#">
            <i class="ri-add-box-line mr-2 text-white sm:mr-4"></i>
          </a>
          <div id="icon-friend" class="relative">
            <a href="#">
              <i class="ri-user-add-fill mr-2 text-3xl text-white sm:mr-4"></i>
            </a>
            <!-- Friend Subnav  -->
            <div id="subnav-friend" class="absolute top-10 -right-28 rounded-md bg-white text-base shadow shadow-gray-400" >
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
            <i class="ri-chat-3-line mr-2 text-white sm:mr-4"></i>
          </a>
          <div id="icon-notif" class="relative">
            <i class="ri-heart-line mr-2 cursor-pointer text-white sm:mr-4"></i>
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
          <div class="relative flex">
            <!-- avatar/${sessionScope.user.avatar} -->
            <div class="p-1">
              <img id="icon-user" class="h-8 w-8 cursor-pointer rounded-full transition" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" />
            </div>
            <div id="subnav-user" class="absolute top-10 right-0 h-48 w-48 rounded-lg bg-white text-xl shadow-sm shadow-gray-600" style="visibility:hidden;">
              <div class="flex cursor-pointer items-center pl-5 pt-1 pb-2 hover:rounded-lg hover:bg-gray-200">
                <i class="ri-map-pin-user-line mr-3 text-3xl"></i>
                <a href="profile">Profile</a>
              </div>
              <div class="flex cursor-pointer items-center pl-5 pt-1 pb-2 hover:rounded-lg hover:bg-gray-200">
                <i class="ri-bookmark-line mr-3 text-3xl"></i>
                Save
              </div>
              <div class="flex cursor-pointer items-center pl-5 pt-1 pb-2 hover:rounded-lg hover:bg-gray-200">
                <i class="ri-settings-5-line mr-3 text-3xl"></i>
                <a href="edit">Settings</a>
              </div>
              <div class="flex h-12 cursor-pointer items-center pl-14 pt-1 pb-2 font-bold hover:rounded-lg hover:bg-gray-200">
                <a href="logout">Log out</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- New post  -->
    <div id="subnav-newpost" class="fixed top-0 z-50 h-screen w-screen bg-sky-100 bg-opacity-60" style="visibility: hidden;">
      <div id="subnav-newpost-container" class="fixed rounded-3xl bg-white opacity-100" style="width: 500px; height: 600px;top: 50%;left: 50%;margin-top: -300px;margin-left: -250px;">
        <div id="newpost-close" class="absolute top-0 right-4 mt-1 cursor-pointer text-2xl opacity-60 hover:opacity-100">x</div>
        <div class="flex justify-center border-b border-gray-600 py-2 text-xl">Create new post</div>
        <div class="mx-auto mt-1 h-80 w-80 bg-gray-100">
          <!-- Upload image  -->
          <img class="" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="" />
        </div>
        <div class="flex justify-center text-xl font-bold">
          <i class="ri-upload-line"></i>
        </div>
        <div class="mx-auto flex w-56 cursor-pointer justify-center rounded-lg bg-blue-400 p-1 text-sm font-bold text-white hover:bg-blue-500">
          <!-- Image Input  -->
          <p>Select photo from Device</p>
        </div>
        <form action="">
          <div class="flex justify-center">
            <!-- Content  -->
            <textarea class="mt-4 rounded-md border border-gray-400 p-3 shadow-md shadow-gray-400" name="" placeholder="What's in your mind" id="" cols="40" rows="3"></textarea>
          </div>
          <div class="flex justify-center">
            <!-- Submit  -->
            <button class="mt-3 rounded-lg bg-blue-400 px-8 pb-2 pt-1 text-xl font-bold text-white hover:bg-blue-500">Post</button>
          </div>
        </form>
      </div>
    </div>
    <!-- Container -->
    <div class="pt-12 sm:pt-14 sm:bg-cyan-50">
      <div class="mx-auto flex w-full flex-col md:w-3/5 xl:w-2/5">
        <!-- Story  -->
        <div class="flex justify-start overflow-x-hidden border border-gray-300 bg-white p-2 sm:p-4 sm:rounded-md">
          <div class="mr-2 min-w-fit">
            <div class="icon-story cursor-pointer rounded-full bg-gradient-to-br from-blue-500 to-cyan-500 p-1 shadow-sm shadow-gray-400">
              <img class="h-16 w-16 rounded-full bg-white p-1" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow" />
            </div>
            <p class="flex justify-center text-sm">2022</p>
          </div>
          <div class="mr-2 min-w-fit">
            <div class="icon-story cursor-pointer rounded-full bg-gradient-to-br from-blue-500 to-cyan-500 p-1 shadow-sm shadow-gray-400">
              <img class="h-16 w-16 rounded-full bg-white p-1" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow" />
            </div>
            <p class="flex justify-center text-sm">2022</p>
          </div>
          <div class="mr-2 min-w-fit">
            <div class="icon-story cursor-pointer rounded-full bg-gradient-to-br from-blue-500 to-cyan-500 p-1 shadow-sm shadow-gray-400">
              <img class="h-16 w-16 rounded-full bg-white p-1" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow" />
            </div>
            <p class="flex justify-center text-sm">2022</p>
          </div>
          <div class="mr-2 min-w-fit">
            <div class="icon-story cursor-pointer rounded-full bg-gradient-to-br from-blue-500 to-cyan-500 p-1 shadow-sm shadow-gray-400">
              <img class="h-16 w-16 rounded-full bg-white p-1" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow" />
            </div>
            <p class="flex justify-center text-sm">2022</p>
          </div>
        </div>
        <!-- Post -->
        <div class="post sm:my-3">
          <div>
            <div class="border border-gray-300 bg-white sm:rounded-md">
              <div class="flex items-center justify-between pt-2 pb-2">
                <div class="flex items-center">
                  <a href="#"> <img class="w-10 h-10 rounded-full ml-3 mr-3" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow"> </a>
                  <a class="text-xl font-bold" href="#">git_zno</a>
                </div>
                <i class="bi bi-three-dots-vertical flex cursor-pointer items-center text-3xl"></i>
              </div>
              <div><img class="w-380 h-380 md:w-500 md:h-500" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="" /></div>
              <div class="flex justify-between">
                <div class="flex justify-between">
                  <svg class="mt-1 mr-2 ml-2 w-7 cursor-pointer sm:w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                    <path fill="none" d="M0 0H24V24H0z" />
                    <path d="M12.001 4.529c2.349-2.109 5.979-2.039 8.242.228 2.262 2.268 2.34 5.88.236 8.236l-8.48 8.492-8.478-8.492c-2.104-2.356-2.025-5.974.236-8.236 2.265-2.264 5.888-2.34 8.244-.228zm6.826 1.641c-1.5-1.502-3.92-1.563-5.49-.153l-1.335 1.198-1.336-1.197c-1.575-1.412-3.99-1.35-5.494.154-1.49 1.49-1.565 3.875-.192 5.451L12 18.654l7.02-7.03c1.374-1.577 1.299-3.959-.193-5.454z" fill="rgba(50,152,219,1)" />
                  </svg>
                  <!-- <svg class="mt-1 mr-2 ml-2 hidden cursor-pointer w-7 sm:w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" >
                                        <path fill="none" d="M0 0H24V24H0z" />
                                        <path d="M12.001 4.529c2.349-2.109 5.979-2.039 8.242.228 2.262 2.268 2.34 5.88.236 8.236l-8.48 8.492-8.478-8.492c-2.104-2.356-2.025-5.974.236-8.236 2.265-2.264 5.888-2.34 8.244-.22
                                        8z" fill="rgba(231,76,60,1)" />
                                    </svg> -->
                  <svg class="mt-1 mr-2 ml-2 w-7 cursor-pointer sm:w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                    <path fill="none" d="M0 0h24v24H0z" />
                    <path
                      d="M10 3h4a8 8 0 1 1 0 16v3.5c-5-2-12-5-12-11.5a8 8 0 0 1 8-8zm2 14h2a6 6 0 1 0 0-12h-4a6 6 0 0 0-6 6c0 3.61 2.462 5.966 8 8.48V
                                        17z"
                      fill="rgba(50,152,219,1)"
                    />
                  </svg>
                  <svg class="mt-1 mr-2 ml-2 w-7 cursor-pointer sm:w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                    <path fill="none" d="M0 0h24v24H0z" />
                    <path
                      d="M13.12 17.023l-4.199-2.29a4 4 0 1 1 0-5.465l4.2-2.29a4 4 0 1 1 .959 1.755l-4.2 2.29a4.008 4.008 0 0 1 0 1.954l4.199 2.29a4 4 0 1 1-.959 1.755zM6 14a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm11-6a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm0 12a2 2 0 1 0 0-4 2 2 0 0 0 0
                                         4z"
                      fill="rgba(50,152,219,1)"
                    />
                  </svg>
                </div>
                <!-- <i class="cursor-pointer ri-bookmark-line mr-2 text-3xl opacity-95"></i> -->

                <svg class="mt-1 mr-2 cursor-pointer w-6 sm:w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="40" height="40">
                  <path fill="none" d="M0 0h24v24H0z" />
                  <path d="M5 2h14a1 1 0 0 1 1 1v19.143a.5.5 0 0 1-.766.424L12 18.03l-7.234 4.536A.5.5 0 0 1 4 22.143V3a1 1 0 0 1 1-1zm13 2H6v15.432l6-3.761 6 3.761V4z" fill="rgba(50,152,219,1)" />
                </svg>
                <!-- <svg class="mt-1 mr-2 hidden cursor-pointer" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="40" height="40">
                  <path fill="none" d="M0 0h24v24H0z" />
                  <path d="M5 2h14a1 1 0 0 1 1 1v19.143a.5.5 0 0 1-.766.424L12 18.03l-7.234 4.536A.5.5 0 0 1 4 22.143V3a1 1 0 0 1 1-1z" fill="rgba(50,152,219,1)" />
                </svg> -->
              </div>
              <div class="text-sm sm:text-xl">
                <div class="ml-4">
                  <p>
                    <span class="font-bold">312 likes</span>
                    <!-- <span>Người thích: tungba.103 và 25 người khác</span> -->
                  </p>
                  <p>
                    <span class="font-bold">kienvu</span>
                    <span>Tớ tỉnh dậy sau 2 ngày liệt giường vì cố gắng tiết kiệm tiền...</span>
                    <span class="cursor-pointer text-gray-500">xem thêm</span>
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

                  <p class="mt-1 mb-2 text-base text-gray-500">14 giờ trước</p>
                </div>
                <div class="relative flex justify-between sm:border-t border-gray-300 p-2 sm:p-4">
                  <div class="flex items-center">
                    <img class="mr-3 h-12 w-12 rounded-full" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="" />
                    <form class="" action="comment">
                      <input class="w-36 focus:outline-none sm:w-80 2xl:w-96" type="text" placeholder="Thêm bình luận..." />
                      <button class="absolute top-5 right-4 rounded-lg bg-cyan-300 py-1 px-4 font-bold opacity-80 hover:opacity-100">Post</button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="post sm:my-3">
            <div>
              <div class="border border-gray-300 bg-white sm:rounded-md">
                <div class="flex items-center justify-between pt-2 pb-2">
                  <div class="flex items-center">
                    <a href="#"> <img class="w-10 h-10 rounded-full ml-3 mr-3" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow"> </a>
                    <a class="text-xl font-bold" href="#">git_zno</a>
                  </div>
                  <i class="bi bi-three-dots-vertical flex cursor-pointer items-center text-3xl"></i>
                </div>
                <div><img class="w-380 h-380 md:w-500 md:h-500" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="" /></div>
                <div class="flex justify-between">
                  <div class="flex justify-between">
                    <svg class="mt-1 mr-2 ml-2 w-7 cursor-pointer sm:w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                      <path fill="none" d="M0 0H24V24H0z" />
                      <path d="M12.001 4.529c2.349-2.109 5.979-2.039 8.242.228 2.262 2.268 2.34 5.88.236 8.236l-8.48 8.492-8.478-8.492c-2.104-2.356-2.025-5.974.236-8.236 2.265-2.264 5.888-2.34 8.244-.228zm6.826 1.641c-1.5-1.502-3.92-1.563-5.49-.153l-1.335 1.198-1.336-1.197c-1.575-1.412-3.99-1.35-5.494.154-1.49 1.49-1.565 3.875-.192 5.451L12 18.654l7.02-7.03c1.374-1.577 1.299-3.959-.193-5.454z" fill="rgba(50,152,219,1)" />
                    </svg>
                    <!-- <svg class="mt-1 mr-2 ml-2 hidden cursor-pointer w-7 sm:w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" >
                                          <path fill="none" d="M0 0H24V24H0z" />
                                          <path d="M12.001 4.529c2.349-2.109 5.979-2.039 8.242.228 2.262 2.268 2.34 5.88.236 8.236l-8.48 8.492-8.478-8.492c-2.104-2.356-2.025-5.974.236-8.236 2.265-2.264 5.888-2.34 8.244-.22
                                          8z" fill="rgba(231,76,60,1)" />
                                      </svg> -->
                    <svg class="mt-1 mr-2 ml-2 w-7 cursor-pointer sm:w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                      <path fill="none" d="M0 0h24v24H0z" />
                      <path
                        d="M10 3h4a8 8 0 1 1 0 16v3.5c-5-2-12-5-12-11.5a8 8 0 0 1 8-8zm2 14h2a6 6 0 1 0 0-12h-4a6 6 0 0 0-6 6c0 3.61 2.462 5.966 8 8.48V
                                          17z"
                        fill="rgba(50,152,219,1)"
                      />
                    </svg>
                    <svg class="mt-1 mr-2 ml-2 w-7 cursor-pointer sm:w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                      <path fill="none" d="M0 0h24v24H0z" />
                      <path
                        d="M13.12 17.023l-4.199-2.29a4 4 0 1 1 0-5.465l4.2-2.29a4 4 0 1 1 .959 1.755l-4.2 2.29a4.008 4.008 0 0 1 0 1.954l4.199 2.29a4 4 0 1 1-.959 1.755zM6 14a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm11-6a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm0 12a2 2 0 1 0 0-4 2 2 0 0 0 0
                                           4z"
                        fill="rgba(50,152,219,1)"
                      />
                    </svg>
                  </div>
                  <!-- <i class="cursor-pointer ri-bookmark-line mr-2 text-3xl opacity-95"></i> -->
  
                  <svg class="mt-1 mr-2 cursor-pointer w-6 sm:w-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="40" height="40">
                    <path fill="none" d="M0 0h24v24H0z" />
                    <path d="M5 2h14a1 1 0 0 1 1 1v19.143a.5.5 0 0 1-.766.424L12 18.03l-7.234 4.536A.5.5 0 0 1 4 22.143V3a1 1 0 0 1 1-1zm13 2H6v15.432l6-3.761 6 3.761V4z" fill="rgba(50,152,219,1)" />
                  </svg>
                  <!-- <svg class="mt-1 mr-2 hidden cursor-pointer" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="40" height="40">
                    <path fill="none" d="M0 0h24v24H0z" />
                    <path d="M5 2h14a1 1 0 0 1 1 1v19.143a.5.5 0 0 1-.766.424L12 18.03l-7.234 4.536A.5.5 0 0 1 4 22.143V3a1 1 0 0 1 1-1z" fill="rgba(50,152,219,1)" />
                  </svg> -->
                </div>
                <div class="text-sm sm:text-xl">
                  <div class="ml-4">
                    <p>
                      <span class="font-bold">312 likes</span>
                      <!-- <span>Người thích: tungba.103 và 25 người khác</span> -->
                    </p>
                    <p>
                      <span class="font-bold">kienvu</span>
                      <span>Tớ tỉnh dậy sau 2 ngày liệt giường vì cố gắng tiết kiệm tiền...</span>
                      <span class="cursor-pointer text-gray-500">xem thêm</span>
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
  
                    <p class="mt-1 mb-2 text-base text-gray-500">14 giờ trước</p>
                  </div>
                  <div class="relative flex justify-between sm:border-t border-gray-300 p-2 sm:p-4">
                    <div class="flex items-center">
                      <img class="mr-3 h-12 w-12 rounded-full" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="" />
                      <form class="rounded-lg" action="comment">
                        <input class="w-36 focus:outline-none sm:w-80 2xl:w-96" type="text" placeholder="Thêm bình luận..." />
                        <button class="absolute top-5 right-4 rounded-lg bg-cyan-300 py-1 px-4 font-bold opacity-80 hover:opacity-100">Post</button>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        
      </div>
    </div>
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
