<html>
<head>
    <meta charset="utf-8">

    <style>
        html{
            background-color: #555;
            color: white;
            font-family: 'Nunito', sans-serif;
        }
        form{
            margin: 50px auto;
            width: 50%;
            font-size: 1.6rem;
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-items: center;
            justify-content: center;
        }

        form input, form textarea, form button{
            text-align: center;
            font-size: 1.6rem;
            margin-top: 25px;
            width: 60%;
        }
        form button{
            cursor: pointer;
        }
        table{
            font-size: 2rem;
            margin: 0 auto;
            width: 50%;
            border: 1px black solid;
        }
        table th, td{
            min-width: 200px;
            text-align: center;
            border: 1px black solid;
        }
        table td{
            font-size: 1.2rem;
        }
        table th:last-child, table td:last-child{
            width: 50px;
            min-width: 50px;
        }
        .page{
            font-size: 40px;
            margin-top: 50px;
            list-style: none;
        }
        .pagination{
            display: flex;
            list-style: none;
            justify-content: center;

        }
        .page-link{
            padding: 15px;
        }
        a{
            text-decoration: none;
            color: orange;
        }
        nav{
            height: 100px;
            display: flex;
            padding: 0 5%;
            justify-content: flex-end;
        }
        nav a{
            width: 20%;
            margin-left: 25px;
        }
    </style>


</head>
<body>

<nav>
    <p style="margin-right: auto"><a href="{{action([\App\Http\Controllers\ClientsController::class, 'index'])}}">Home</a></p>
    <p><a href="{{action([\App\Http\Controllers\ReportsController::class, 'SendReport'])}}">Wyślij zgłoszenie</a></p>
    <p><a href="{{action([\App\Http\Controllers\AdministratorsController::class, 'SignIn'])}}">Logowanie</a></p>
</nav>

@if (isset($errors) && count($errors) > 0)
    @foreach ( $errors->all() as $error)
        <h3 style="color: red; text-align: center">{{$error}}</h3>
    @endforeach
@endif
<p>email: pawelkot898@gmail.com<br>Haslo: qwerty</p>
{!! Form::open(['action' => ['App\Http\Controllers\AdministratorsController@Auth', 'method' => 'POST']]) !!}


{{Form::text('email', '', ['placeholder' => 'E-Mail', 'maxlength' => 255])}}
{{Form::text('password', '', ['placeholder' => 'Hasło', 'maxlength' => 255])}}
{{Form::submit('Zaloguj się')}}
{!! Form::close() !!}

</body>
</html>
