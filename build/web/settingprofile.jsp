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
                        <li class="font-bold px-2 sm:px-4 cursor-pointer py-4 "><a href="edit">Edit Profile</a></li>
                        <li class="px-2 sm:px-4 cursor-pointer py-4  hover:bg-gray-100"><a href="changepassword">Change password</a></li>
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
                <form class="text-sm sm:text-base p-4 sm:pl-10" action="edit" method="post" enctype="multipart/form-data">
                    <div class="w-full flex items-center py-2 sm:py-3">
                        <img id="profile-image" class="w-14 h-14 rounded-full" src="avatar/${sessionScope.user.avatar}" alt="" />
                        <div class="ml-4 ">
                            <p class="text-base sm:text-lg font-bold">${sessionScope.user.name}</p>
                            <div class="text-blue-500 font-bold cursor-pointer mb-2">
                                <label for="profile-image-input" class="text-sm cursor-pointer">
                                    Change profile photo
                                    <input id="profile-image-input" style="display: none;" type="file" 
                                           name="avatar" 
                                           accept="image/png, image/jpeg">
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="w-full sm:flex items-center py-2 sm:py-3">
                        <div class="w-28 mb-1 sm:mr-4 sm:mb-0 font-bold">
                            <p class="sm:float-right">Name</p>
                        </div>
                        <input class="  pl-2 pr-2 pt-0.5 pb-0.5 bg-gray-100 focus:bg-white rounded-md autofocus" type="text" name="name" value="${sessionScope.user.name}">
                    </div>
                    <div class="w-full sm:flex items-center py-2 sm:py-3">
                        <div class="w-28 mb-1 sm:mr-4 sm:mb-0 font-bold">
                            <p class="sm:float-right">Username</p>
                        </div>
                        <input class=" pl-2 pr-2 pt-0.5 pb-0.5 bg-gray-100 focus:bg-white rounded-md" type="text" name="username" value="${sessionScope.user.username}" readonly>
                    </div>
                    <div class="w-full sm:flex py-2 sm:py-3">
                        <div class="w-28 mb-1 sm:mr-4 sm:mb-0 font-bold">
                            <p class="sm:float-right">Bio</p>
                        </div>
                        <textarea class=" pl-2 pr-2 pt-0.5 pb-0.5 bg-gray-100 focus:bg-white rounded-md" name="bio" id="" cols="30" rows="2" maxlength="150" placeholder="Bio">${sessionScope.user.bio}</textarea>
                    </div>
                    <div class="w-full sm:flex items-center py-2 sm:py-3">
                        <div class="w-28 mb-1 sm:mr-4 sm:mb-0 font-bold">
                            <p class="sm:float-right">Email</p>
                        </div>
                        <input class=" pl-2 pr-2 pt-0.5 pb-0.5 bg-gray-100 focus:bg-white rounded-md" type="text" name="mail" value="${sessionScope.user.mail}" placeholder="Email">
                    </div>
                    <div class="w-full sm:flex items-center py-2 sm:py-3">
                        <div class="w-28 mb-1 sm:mr-4 sm:mb-0 font-bold">
                            <p class="sm:float-right">Phone number</p>
                        </div>
                        <input class=" pl-2 pr-2 pt-0.5 pb-0.5 bg-gray-100 focus:bg-white rounded-md" type="text" pattern="[0-9]{8,}" name="phone" value="${sessionScope.user.phone}" placeholder="Phone number">
                    </div>
                    <div class="w-full sm:flex items-center py-2 sm:py-3">
                        <div class="w-28 mb-1 sm:mr-4 sm:mb-0 font-bold">
                            <p class="sm:float-right">Date of Birth</p>
                        </div>
                        <input class=" pl-2 pr-2 pt-0.5 pb-0.5 bg-gray-100 focus:bg-white rounded-md" type="date" name="dob" value="${sessionScope.user.dob}">
                    </div>
                    <div class="w-full sm:flex items-center py-2 sm:py-3">
                        <div class="w-28 mb-1 sm:mr-4 sm:mb-0 font-bold">
                            <p class="sm:float-right">Gender</p>
                        </div>
                        <div class="inline-flex items-center">
                            <input class="mr-1" name="gender" value="Male" ${sessionScope.user.gender == true ? "checked" : ""} type="radio"> Male 
                            <input class="ml-4 mr-1" name="gender" value="Female" ${sessionScope.user.gender == false ? "checked" : ""} type="radio"> Female
                        </div>                        
                    </div>
                    <div class="flex justify-center items-center mt-10 sm:mt-4">
                        <button class=" px-3 py-1 font-bold bg-emerald-400 opacity-90 hover:opacity-100 rounded-xl">
                            Submit
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

<!-- Setting Profile js  -->
<script>
    var profileImage = document.getElementById("profile-image");
    var profileImageInput = document.getElementById("profile-image-input");
    profileImageInput.addEventListener("change", function (e) {
        const file = this.files[0];
        if (file) {
            const reader = new FileReader();

            reader.addEventListener("load", function () {
                profileImage.setAttribute("src", this.result);
            })
            reader.readAsDataURL(file);
        }

    })
</script>
</html>
