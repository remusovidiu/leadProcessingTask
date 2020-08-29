<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Admin Panel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <!-- scripts -->
    <script src="{{ asset ('js/jquery.min.js') }}"></script>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Administrare</a>
        <ul class="nav justify-content-end">
            <li class="nav-item">
                <a class="nav-link" href="/">Go to site</a>
            </li>            
        </ul>
    </nav>

    <div class="container">
        <div class="row justify-content-center ">
            <div>
                <main class="py-4">
                    @yield('body')
                </main>
            </div>
        </div>
    </div>
</body>
</html>