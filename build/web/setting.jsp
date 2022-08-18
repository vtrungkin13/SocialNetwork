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
    <div class="bg-gray-200 h-screen w-screen pt-20">
      <div class="relative flex justify-start mx-56 bg-blue-50">
        <div class="bg-blue-100 w-2/5">
          <ul>
            <li>Edit Profile</li>
            <li>Change password</li>
            <li>Apps and websites</li>
            <li>Email notifications</li>
          </ul>
        </div>
        <div class="bg-blue-200 w-full">
          Tungba103
        </div>
      </div>
    </div>
  </body>
</html>
