<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Profile</title>
  </head>
  <body>
    <!-- Navigation -->
    <div class="fixed top-0 left-0 right-0 z-40 bg-white">
      <div class="sm:pb- flex w-full items-center justify-between pt-1 pl-4 pr-4 text-2xl sm:justify-center sm:border-b sm:pt-1 sm:text-2xl">
        <!-- Logo -->
        <a class="" href="home">Instagram</a>

        <!-- Search  -->
        <div class="hidden sm:flex">
          <input class="rounded-lg bg-gray-200 p-1 pl-4 text-sm focus:outline-none sm:ml-28 xl:ml-44 2xl:ml-60" type="text" placeholder="Seach..." />
        </div>

        <!-- Icon  -->
        <div class="relative flex items-center sm:ml-28 xl:ml-44 2xl:ml-60">
          <a class="absolute -top-1 right-20" href="#"><i class="bi bi-plus-square mt-0 mr-3 hover:text-blue-500"></i></a>
          <a class="absolute -top-1 right-10" href="#"><i class="bi bi-chat mt-0 mr-3 hover:text-blue-500"></i></a>
          <!-- Subnav  -->
          <div>
            <img class="relative ml-2 h-8 w-8 cursor-pointer rounded-full transition" id="avatar" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
            <div id="subnav" class="fixed top-10 right-2 mt-1 h-40 w-48 rounded-lg bg-gray-100 text-xl sm:right-40 xl:right-80 2xl:right-96 2xl:mr-40" style="visibility:hidden;">
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

    <!-- Container  -->
    <div class="-z-10 h-screen bg-gray-200">
      <div class="mx-40 bg-blue-50 pt-20">
        <div class="">
          <img class="float-left h-20 w-20 rounded-full" src="https://play-lh.googleusercontent.com/XVHP0sBKrRJYZq_dB1RalwSmx5TcYYRRfYMFO18jgNAnxHAIA1osxM55XHYTb3LpkV8" alt="cute cat" />
          <div class="">
            <div class="flex justify-start">
              <p>tungba103</p>
              <p>Edit Profile</p>
              <a href="#">
                <i class="bi bi-gear-wide"></i>
              </a>
            </div>
            <div class="flex justify-start">
              <p>3 posts</p>
              <p>137 followers</p>
              <p>291 following</p>
            </div>
            <div>
              <p>Bá Tùng</p>
              <p>memory_tbo</p>
            </div>
          </div>
        </div>
        <div class="">
          <div>
            <img class="w-10 h-10 rounded-full ml-3 mr-3" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
            <p>2022</p>
          </div>
        </div>
      </div>
      <!-- Post  -->
      <div class="pt-10">
          <div class ="flex justify-center">
            <img class="w-72 h-w-72 m-4" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
            <img class="w-72 h-w-72 m-4" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
            <img class="w-72 h-w-72 m-4" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
          </div>
          <div class ="flex justify-center">
            <img class="w-72 h-w-72 m-4" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
            <img class="w-72 h-w-72 m-4" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
            <img class="w-72 h-w-72 m-4" src=https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg" alt="meow">
          </div>
      </div>
    </div>
  </body>
</html>
