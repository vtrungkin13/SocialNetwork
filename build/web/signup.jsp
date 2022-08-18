<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Sign up</title>
  </head>
  <body>
    <!-- mobile -->
    <div class="flex flex-col justify-center sm:bg-gray-50">
      <div class="flex justify-center">
        <form class="mt-32 flex flex-col justify-center rounded-xl sm:border border-gray-200 bg-white p-8" action="signup" method="post">
          <div class="hidden">
            <span>English</span>
            <i class="bi bi-chevron-down"></i>
          </div>
          <p class="mb-6 flex justify-center text-5xl">Instagram</p>
          <div class="hidden">
            <a href="#">Continue with Facebook</a>
            <p>OR</p>
          </div>
          <div class="mt-2 border border-gray-300 bg-gray-50"><input class="w-56 pl-1 p-1 bg-gray-50 focus:outline-none" 
          pattern="[a-z0-9]{8,}" title="Contain lowercase letter or number, at least 8 characters width" 
          type="text" name="user" placeholder="Username" required autofocus></div>
          <div class="mt-2 border border-gray-300 bg-gray-50"><input class="w-56 pl-1 p-1 bg-gray-50 focus:outline-none" 
          pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" 
          type="password" name="pass" placeholder="Password" required ></div>
          <div class="mt-2 border border-gray-300 bg-gray-50"><input class="w-56 pl-1 p-1 bg-gray-50 focus:outline-none" 
          pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" 
          type="password" name="repass" placeholder="Retype Password" required ></div>
          <div class="mt-2 border border-gray-300 bg-gray-50"><input class="w-56 pl-1 p-1 bg-gray-50 focus:outline-none" 
          pattern="[a-zA-Z 0-9]{2,}" title="Contain uppercase, lowercase letter, space or number" 
          type="text" name="name" placeholder="Display name" required ></div>
          <div class="mt-2 border border-gray-300 bg-gray-50"><input class="w-56 pl-1 p-1 bg-gray-50 focus:outline-none w-56" 
          type="date" name="dob" required pattern="\d{2}-\d{2}-\d{4}" required ></div>
          <div class="flex justify-center">
            <div class="m-1">
              <input type="radio" name="gender" id="" value="male"> Male 
            </div>
            <div class="m-1">
              <input type="radio" name="gender" id="" value="female"> Female
            </div>
          </div>
          <div>
            <p class="mt-3 text-sm text-red-600">${requestScope.existedUser}</p>
            <p class="mt-3 text-sm text-red-600">${requestScope.passNotMatch}</p>
          </div>
          <button class="my-6 h-10 bg-blue-400 font-bold text-white opacity-60 hover:opacity-100" type="submit">Sign up</button>
        </form>
      </div>
      <div class="h-72"></div>
    </div>
  </body>
</html>
