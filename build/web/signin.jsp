<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
        <script src="https://cdn.tailwindcss.com"></script>
        <title>Sign in</title>
    </head>
    <body>
        <!-- Container -->
        <div class="flex flex-col justify-center sm:bg-gray-50">
            <div class="flex justify-center">
                <form class="mt-32 flex flex-col justify-center rounded-xl sm:border border-gray-200 bg-white p-8" 
                      action="signin" method="post">
                    <div class="hidden">
                        <span>English</span>
                        <i class="bi bi-chevron-down"></i>
                    </div>
                    <p class="mb-6 flex justify-center text-5xl">Instagram</p>
                    <div class="hidden">
                        <a href="#">Continue with Facebook</a>
                        <p>OR</p>
                    </div>
                    <div class="mt-2 border border-gray-300 bg-gray-50">
                        <input class="w-56 pl-1 p-1 bg-gray-50 focus:outline-none" title="Contain lowercase letter or number, at least 8 characters width="" 
                               type="text" name="user" placeholder="Username" required autofocus>
                    </div>
                    <div class="mt-2 border border-gray-300 bg-gray-50">
                        <input class="w-56 pl-1 p-1 bg-gray-50 focus:outline-none" title="Contain lowercase letter or number, at least 8 characters width="" 
                               type="password" name="pass" placeholder="Password" required autofocus>
                    </div>
                    <div class="flex justify-end text-sm mt-2">
                        <label>
                            <input class="mx-1 cursor-pointer" type="checkbox" id="remember" name="remember">
                            Remember me
                        </label>
                    </div>
                    <div>
                        <p class="mt-3 text-sm text-red-600">${requestScope.invalidSignin}</p>
                    </div>
                    <div class="mt-4 flex justify-end">
                        <a class="text-sm text-blue-700" href="#">Forget password</a>
                    </div>
                    <button class="my-6 h-10 bg-blue-400 font-bold text-white opacity-60 hover:opacity-100" 
                            type="submit">Sign in</button>
                    <p class="flex justify-end text-sm">
                        Don't have account?
                        <a class="ml-1 text-blue-700" href="signup">Sign up</a>
                    </p>
                </form>
            </div>
        </div>
    </body>
</html>
