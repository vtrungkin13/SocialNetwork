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
        <title>Setting</title>
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>

        <!-- Container  -->
        <div class="sm:bg-gray-50 h-screen w-screen pt-12 xl:pt-16 2xl:pt-20">
            <div class="relative flex justify-start 2xl:mx-96 xl:mx-72 bg-white rounded-xl sm:border border-gray-200 sm:shadow-md">
                <div class="w-28 sm:min-w-fit text-sm sm:text-base">
                    <ul class="">
                        <li class="px-2 sm:px-4 cursor-pointer py-4 "><a href="edit">Edit Profile</a></li>
                        <li class="font-bold px-2 sm:px-4 cursor-pointer py-4  hover:bg-gray-100"><a href="changepassword">Change password</a></li>
                        <li class="px-2 sm:px-4 cursor-pointer py-4  hover:bg-gray-100">Apps and websites</li>
                        <li class="px-2 sm:px-4 cursor-pointer py-4  hover:bg-gray-100">Email notifications</li>
                        <li class="px-2 sm:px-4 cursor-pointer py-4  hover:bg-gray-100">Push notifications</li>
                        <li class="px-2 sm:px-4 cursor-pointer py-4  hover:bg-gray-100">Manage contacts</li>
                        <li class="px-2 sm:px-4 cursor-pointer py-4  hover:bg-gray-100">Privacy and security</li>
                        <li class="px-2 sm:px-4 cursor-pointer py-4  hover:bg-gray-100">Login activity</li>
                        <li class="px-2 sm:px-4 cursor-pointer py-4  hover:bg-gray-100">Emails from Instagram</li>
                        <li class="px-2 sm:px-4 cursor-pointer py-4  hover:bg-gray-100">Help</li>
                    </ul>
                </div>
                <form action="changepassword" method="post" class="text-sm sm:text-base p-4 sm:pl-10">
                    <div class="w-full flex items-center py-2 sm:py-3">
                        <img id="profile-image" class="w-14 h-14 rounded-full" src="avatar/${sessionScope.user.avatar}" alt="" />
                        <div class="ml-4 ">
                            <p class="text-base sm:text-lg font-bold">${sessionScope.user.name}</p>
                        </div>
                    </div>
                    <div class="w-full sm:flex items-center py-2 sm:py-3">
                        <div class="w-28 mb-1 sm:mr-4 sm:mb-0 font-bold">
                            <p class="sm:float-right">Old Password</p>
                        </div>
                        <input class="px-2 sm:text-xl py-1 bg-gray-100 focus:bg-white rounded-md" type="password" name="pass" autofocus>
                    </div>
                    <div class="w-full sm:flex items-center py-2 sm:py-3">
                        <div class="w-28 mb-1 sm:mr-4 sm:mb-0 font-bold">
                            <p class="sm:float-right">New Password</p>
                        </div>
                        <input class=" px-2 sm:text-xl py-1 bg-gray-100 focus:bg-white rounded-md" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                               title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" type="password" name="newpass" >
                    </div>
                    <div class="w-full sm:flex items-center py-2 sm:py-3">
                        <div class="w-28 mb-1 sm:mr-4 sm:mb-0 font-bold">
                            <p class="sm:float-right">Confirm New </p>
                            <p class="sm:float-right">Password</p>
                        </div>
                        <input class=" px-2 sm:text-xl py-1 bg-gray-100 focus:bg-white rounded-md" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                               title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" type="password" name="newpass" >
                    </div>
                    <div class="flex justify-center text-sm text-red-500">
                        <p>${requestScope.passwordIncorrect}</p>
                    </div>
                    <div class="flex justify-center text-sm text-red-500">
                        <p>${requestScope.passwordNotMatch}</p>
                    </div>

                    <div class="flex justify-center items-center mt-10 sm:mt-4">
                        <button class=" px-3 py-1 font-bold bg-emerald-400 opacity-90 hover:opacity-100 rounded-xl">
                            Change Password
                        </button>
                    </div>
                    <div class="flex justify-center mt-4 text-sm text-emerald-600">
                        <a href="#">Forget password?</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
