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
    <!-- Navigation -->
    <div class="fixed top-0 left-0 right-0 z-40 bg-gradient-to-b from-emerald-500 to-emerald-400">
        <div class="flex items-center justify-between sm:py-1">
            <!-- Logo -->
            <a class="ml-4 font-serif text-2xl text-white sm:text-4xl" href="home">Instagram</a>
  
            <!-- Search  -->
            <div class="hidden md:flex relative">
                <!-- <form class="text-sm" action="search">
                  <input class="w-80 rounded-lg bg-white p-1 pl-4 text-sm focus:outline-none" type="text" placeholder="Seach..." />
                  <button class="hidden text-sm">Search</button>
                </form> -->
                <input id="search-input" class="w-80 rounded-lg bg-gray-50 p-1 pl-4 text-sm focus:outline-none" type="text" placeholder="Seach..." />
                <div id="subnav-search" style="visibility: hidden;" class="absolute top-8 w-80 max-h-96 bg-white rounded-xl cursor-pointer overflow-y-scroll">
                    <c:forEach items="${sessionScope.search}" var="s">
                        <a href="#" style="display:none;" class="search-item flex justify-start items-center p-2 hover:bg-emerald-50 rounded-t-xl">
                            <img class="w-12 h-12 rounded-full" src="avatar/${s.avatar}" alt="">
                            <div class="pl-2 text-sm">
                                <p class="item-user font-bold" >${s.username}</p>
                                <p>${s.name}</p>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>
  
            <!-- Navbar  -->
            <div class="mr-2 flex items-center text-3xl sm:mr-4 sm:text-4xl">
                <!-- Search Icon  -->     
                <i id="icon-search" class="ri-search-line mr-2 text-2xl text-white font-bold cursor-pointer md:hidden"></i>      
                <a id="icon-newpost" href="#">
                    <!-- New post  -->
                    <i class="ri-add-box-line mr-2 text-white sm:mr-4"></i>
                </a>
                <div id="icon-friend" class="relative">
                    <a href="#">
                        <i class="ri-user-add-fill mr-2 text-2xl text-white sm:mr-4 sm:text-3xl"></i>
                    </a>
                    <!-- Friend Subnav  -->
                    <div id="subnav-friend" class="absolute top-10 -right-28 w-80 rounded-md bg-white text-base shadow shadow-gray-400 sm:right-0 sm:w-96" style="visibility:hidden ;">
                        <div class="flex cursor-pointer items-center justify-center p-3 hover:bg-gray-50">
                            <p class="text-lg font-bold text-emerald-500">Get new friend</p>
                            <i class="ri-arrow-right-s-line text-lg font-bold"></i>
                        </div>
                        <div class="border-t pt-1">
                            <p class="pl-3 font-bold text-emerald-500">Follow request</p>
                            <!-- loop -->
                            <div class="cursor-pointer p-3 pl-4">
                                <div class="relative flex items-center justify-start">
                                    <img class="mr-2 inline-flex h-10 w-10 items-center justify-start rounded-full transition" id="avatar" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
                                    <div class="">
                                        <p class="font-bold">li.ta2305</p>
                                        <p class="text-sm text-gray-400">Lita</p>
                                    </div>
                                    <span class="absolute right-20 mr-1 rounded-md border border-gray-300 bg-emerald-400 p-1 px-4 text-sm font-bold text-white hover:bg-emerald-500">Confirm</span>
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
                    <div id="subnav-notif" class="absolute top-10 right-0 w-80 overflow-x-hidden rounded-md bg-white text-base shadow shadow-gray-400 sm:right-0 sm:w-96" style="visibility:hidden;">
                        <!-- Loop  -->
                        <div class="cursor-pointer p-3 hover:bg-gray-50">
                            <img class="mr-1 inline-flex h-10 w-10 items-center justify-start rounded-full transition" id="avatar" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
                            <span><span class="mr-1 font-bold">kienvu</span>started following you.</span>
                            <span class="float-right hidden rounded-md border border-gray-300 bg-white py-1 px-2 sm:block">Following</span>
                        </div>
                        <div class="cursor-pointer p-3 hover:bg-gray-50">
                            <img class="mr-1 inline-flex h-10 w-10 items-center justify-start rounded-full transition" id="avatar" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
                            <span><span class="mr-1 font-bold">kienvu</span>liked your photo.</span>
                            <img class="float-right mr-4 hidden h-10 w-10 items-center justify-start transition sm:block" id="avatar" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
                        </div>
                        <div class="cursor-pointer p-3 hover:bg-gray-50">
                            <img class="mr-1 inline-flex h-10 w-10 items-center justify-start rounded-full transition" id="avatar" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
                            <span><span class="mr-1 font-bold">kienvu</span>commented in your photo.</span>
                            <img class="float-right mr-4 hidden h-10 w-10 items-center justify-start transition sm:block" id="avatar" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
                        </div>
                    </div>
                </div>
                <!--User subnav  -->
                <div class="relative flex">
                    <div class="">
                        <img id="icon-user" class="mb-1 h-6 w-6 cursor-pointer rounded-full transition sm:h-8 sm:w-8" src="avatar/${sessionScope.user.avatar}" />
                    </div>
                    <div id="subnav-user" class="absolute top-10 right-0 h-48 w-48 rounded-lg bg-white text-xl shadow-sm shadow-gray-600" style="visibility: hidden;" >
                        <div class="flex cursor-pointer items-center pl-5 pt-1 pb-2 hover:rounded-lg hover:bg-gray-100">
                            <i class=" ri-map-pin-user-line mr-3 text-emerald-400 text-3xl"></i>
                            <a href="profile" class="text-emerald-400">Profile</a>
                        </div>
                        <div class="flex cursor-pointer items-center pl-5 pt-1 pb-2 hover:rounded-lg hover:bg-gray-100">
                            <i class=" ri-bookmark-line mr-3 text-emerald-400 text-3xl"></i>
                            <a href="#" class="text-emerald-400">Save</a>
                        </div>
                        <div class="flex cursor-pointer items-center pl-5 pt-1 pb-2 hover:rounded-lg hover:bg-gray-100">
                            <i class=" ri-settings-5-line mr-3 text-emerald-400 text-3xl"></i>
                            <a href="edit" class="text-emerald-400">Settings</a>
                        </div>
                        <div class="flex h-12 cursor-pointer items-center pl-14 pt-1 pb-2 font-bold hover:rounded-lg hover:bg-gray-100">
                            <a href="logout" class="text-emerald-500">Log out</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>

    <!-- Search mobile  -->
    <div id="mobile-search" style="visibility: hidden;" class="fixed z-50 h-screen w-screen bg-cyan-100 bg-opacity-80" >
        <div class="mt-20 flex flex-col items-center justify-center">
            <div id="mobile-search-container" class="p-2 bg-emerald-300 border border-gray-300 rounded-lg">
                <div class="">
                    <input id="mobile-search-input" class="w-80 rounded-lg bg-gray-50 p-1 pl-4 text-sm focus:outline-none" type="text" placeholder="Seach..." />
                    <div id="mobile-subnav-search" style="visibility: hidden;"  class="mt-2 w-80 max-h-96 bg-white rounded-xl cursor-pointer overflow-y-scroll">
                        <a href="#" style="display: none;" class="mobile-search-item flex justify-start items-center p-2 hover:bg-emerald-50 rounded-t-xl">
                            <img class="w-12 h-12 rounded-full" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="">
                            <div class="pl-2 text-sm">
                                <p class="mobile-item-user font-bold" >Tuan</p>
                                <p>Mr. Chamomile</p>
                            </div>
                        </a>
                        <a href="#" style="display: none;" class="mobile-search-item flex justify-start items-center p-2 hover:bg-emerald-50 rounded-t-xl">
                            <img class="w-12 h-12 rounded-full" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="">
                            <div class="pl-2 text-sm">
                                <p class="mobile-item-user font-bold" >Ngec</p>
                                <p>Mr. Chamomile</p>
                            </div>
                        </a>
                        <a href="#" style="display: none;" class="mobile-search-item flex justify-start items-center p-2 hover:bg-emerald-50 rounded-t-xl">
                            <img class="w-12 h-12 rounded-full" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="">
                            <div class="pl-2 text-sm">
                                <p class="mobile-item-user font-bold" >Mien</p>
                                <p>Mr. Chamomile</p>
                            </div>
                        </a> 
                    </div>
                </div>
            </div>        
        </div>
    </div>

    <!-- New post  -->
    <div id="subnav-newpost" class="fixed z-50 h-screen w-screen bg-emerald-100 bg-opacity-80" style="visibility: hidden;" >
    <div class="mt-20 flex flex-col items-center justify-center">
        <div class="newpost-item relative w-80 rounded-t-xl  bg-white sm:w-96">
        <p class="flex justify-center p-1 text-xl font-bold sm:p-2 text-emerald-500">Create New Post</p>
        <span id="newpost-close" class="absolute top-0 right-2 cursor-pointer font-bold text-xl">x</span>
        </div>
        <div class="newpost-item relative">
        <form class="h-80 w-80  sm:h-96 sm:w-96 bg-white flex justify-center relative" action="">
            <img id="image-preview" class=" border-t-none h-80 sm:h-96" src="http://www.arteoral.com.br/wp-content/uploads/2016/04/dummy-post-square-1-768x768.jpg" alt="" />
            <i id="image-undo" class="absolute top-2 right-2 text-3xl font-bold cursor-pointer ri-arrow-left-circle-line" style="display: none;"></i>
        </form>
        <label id="image-input-view" class="absolute top-56 right-28 cursor-pointer sm:top-64 sm:mt-4 sm:right-36 py-1 px-2 bg-emerald-300 hover:bg-emerald-400 rounded-xl" for="image-input">Add photo</label>
        <input id="image-input" class="hidden" type="file" />
        </div>
        <form class="px-6 py-4 w-80 sm:w-96 newpost-item relative bg-white rounded-b-xl" action="">
        <div class="flex justify-start items-center">
            <img class="w-7 h-7 rounded-full" src="https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="avt">
            <p class="ml-2 text-sm font-bold">tungba103</p>
        </div>
        <textarea class="mt-2 sm:w-68 w-80 text-sm focus:outline-none" name="" id="" cols="" rows="4" placeholder="Write a caption..."></textarea>
        <button class="rounded-lg w-16 bg-emerald-400 hover:bg-emerald-500 ">Post</button>
        </form>
    </div>
    </div>
    <!-- Container  -->
    <div class="-z-10 min-h-screen bg-gray-50">
      <div class="2xl:mx-80 xl:mx-52 sm:mx-12 pt-12 sm:pt-20">
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
                      <p class=" text-sm sm:text-xl mr-4 sm:mr-16"><span class="mr-1 font-bold">3</span>posts</p>      
                      <div class="relative text-sm sm:text-xl mr-4 sm:mr-16">
                          <p id="icon-listfollowers" class=" cursor-pointer"><span class="mr-1 font-bold">137</span>followers</p>
                          <!-- Subnav list followers  -->
                          <div id="subnav-listfollowers" class="absolute top-8 -right-14 w-60 min-h-fit max-h-96 overflow-y-scroll bg-white rounded-lg py-1 border border-gray-300 shadow-md"  style="visibility:hidden" >
                              <p class="flex justify-center font-bold text-base p-1 border-b border-gray-400">Followers</p>
                              <!-- loop  -->
                              <div class="flex justify-between items-center p-1">
                                  <div class="flex justify-start items-center ml-1">
                                      <img class="w-10 h-10 rounded-full" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow"> 
                                      <div class="ml-2">
                                          <a class="text-sm font-bold" href="#">dddejavuu_</a>
                                          <p class="text-base">Ngô Vú</p>
                                      </div>
                                  </div>
                                  <p class="float-right py-0.5 px-2 mr-2 rounded-md border border-gray-400 font-bold text-sm cursor-pointer bg-gray-50">Remove</p>
                              </div>
                          </div>
                      </div>
                      <div class="relative text-sm sm:text-xl mr-4 sm:mr-16">
                          <p id="icon-listfollowing" class="  cursor-pointer"><span class="mr-1 font-bold">291</span>following</p>
                          <!-- Subnav list Following  -->
                          <div id="subnav-listfollowing" class="absolute top-8 -right-4 w-64 min-h-fit max-h-96 bg-white rounded-lg py-1 border border-gray-300 shadow-md"  style="visibility:hidden">
                              <p class="flex justify-center font-bold text-base p-1 border-b border-gray-400">Following</p>
                              <!-- loop  -->
                              <div class="flex justify-between items-center p-1">
                                  <div class="flex justify-start items-center ml-1">
                                      <img class="w-10 h-10 rounded-full" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow"> 
                                      <div class="ml-2">
                                          <a class="text-sm font-bold" href="#">dddejavuu_</a>
                                          <p class="text-base">NgÃ´ VÅ©</p>
                                      </div>
                                  </div>
                                  <p class="float-right py-0.5 px-2 mr-2 rounded-md border border-gray-400 font-bold text-sm cursor-pointer bg-gray-50">Following</p>
                              </div>       
                          </div>
                      </div>
                  </div>
                  <div class="ml-32 mb-2 sm:mb-6">
                      <p class=" text-sm sm:text-xl font-bold" >${sessionScope.user.name}</p>
                      <p class=" text-xs sm:text-base">${sessionScope.user.bio}</p>
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
  <script src="javascript/navigation.js"></script>
  <script src="javascript/profile.js"></script>
</html>

