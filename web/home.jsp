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
    <!-- Navigation -->
    <div class="fixed top-0 left-0 right-0 z-40 bg-white">
      <div class="flex w-full items-center justify-between pt-1 pl-4 pr-4 text-2xl sm:justify-center sm:border-b sm:pb-2 sm:pt-3 sm:text-3xl">
        <!-- Logo -->
        <a class="md:mr-12 xl:mr-20 2xl:mr-32 font-serif" href="home">Instagram</a>

        <!-- Search  -->
        <div class="hidden sm:flex">
          <input class="rounded-lg bg-gray-200 p-1 pl-4 text-sm focus:outline-none" type="text" placeholder="Seach..." />
        </div>

        <!-- Icon  -->
        <div class="flex md:ml-12 xl:ml-20 2xl:ml-40">
          <a class="" href="#">
            <i class="ri-add-box-line text-3xl mr-2 "></i>
          </a>
          <a class="" href="#">
            <i class="ri-chat-3-line text-3xl mr-2"></i>
          </a>
          <a class="" href="#">
            <!-- <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="30" height="30"><path fill="none" d="M0 0H24V24H0z"/><path d="M12.001 4.529c2.349-2.109 5.979-2.039 8.242.228 2.262 2.268 2.34 5.88.236 8.236l-8.48 8.492-8.478-8.492c-2.104-2.356-2.025-5.974.236-8.236 2.265-2.264 5.888-2.34 8.244-.228zm6.826 1.641c-1.5-1.502-3.92-1.563-5.49-.153l-1.335 1.198-1.336-1.197c-1.575-1.412-3.99-1.35-5.494.154-1.49 1.49-1.565 3.875-.192 5.451L12 18.654l7.02-7.03c1.374-1.577 1.299-3.959-.193-5.454z"/></svg> -->
            <svg class="mt-0.5 mr-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="30" height="30">
              <path fill="none" d="M0 0H24V24H0z" />
              <path d="M12.001 4.529c2.349-2.109 5.979-2.039 8.242.228 2.262 2.268 2.34 5.88.236 8.236l-8.48 8.492-8.478-8.492c-2.104-2.356-2.025-5.974.236-8.236 2.265-2.264 5.888-2.34 8.244-.228z" />
            </svg>
          </a>
          <!-- Subnav  -->
          <div class="relative">
            <img class="ml-2 h-8 w-8 cursor-pointer rounded-full transition" id="avatar" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
            <div id="subnav" class="absolute top-9 right-0 h-40 w-48 rounded-lg bg-gray-100 text-xl" style="visibility:hidden;">
              <div class="cursor-pointer pl-5 pt-1 pb-2 hover:rounded-lg hover:bg-gray-200">
                <i class="bi bi-person-circle mr-3"></i>
                Profile
              </div>
              <div class="cursor-pointer pl-5 pt-1 pb-2 hover:rounded-lg hover:bg-gray-200">
                <i class="bi bi-save2 mr-3"></i>
                Save
              </div>
              <div class="cursor-pointer pl-5 pt-1 pb-2 hover:rounded-lg hover:bg-gray-200">
                <i class="bi bi-gear-wide mr-3"></i>
                Settings
              </div>
              <div class="cursor-pointer pl-5 pt-1 pb-2 hover:rounded-lg hover:bg-gray-200">Log out</div>
            </div>

            
          </div>
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
                  <img class="w-10 h-10 rounded-full ml-3 mr-3" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
                  <div>
                    <p class="" style="font-size:14px; font-weight:700;">git_zno</p>
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
  </body>
  <script>
    document.getElementById("avatar").addEventListener("click",function(){
      document.getElementById("subnav").style.visibility = "visible";
    })
    document.addEventListener("click",function(e) {
      if(!document.getElementById("subnav").contains(e.target) && !document.getElementById("avatar").contains(e.target)) {
        document.getElementById("subnav").style.visibility = "hidden";
      }
    })
  </script>
</html>
