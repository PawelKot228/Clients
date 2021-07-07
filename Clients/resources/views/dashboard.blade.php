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



<h1 style="text-align: center">Zalogowano!</h1>
<h3 style="text-align: center">Lista osób z statusem -1</h3>

{!! Form::open(['action' => ['App\Http\Controllers\ReportsController@HandleReport', 'method' => 'POST']]) !!}
<div>
    <table>
        <tr>
            <th>ID</th>
            <th>Imię</th>
            <th>Email</th>
            <th>Text</th>
            <th>Data Dodania</th>
        </tr>


        @if(count($clients) > 0)
            @foreach($clients as $client)
                    <tr>
                        <td>{{$client->id}}</td>
                        <td>{{$client->name}}</td>
                        <td>{{$client->email}}</td>
                        <td>{{$client->textContent}}</td>
                        <td>{{$client->created_at}}</td>
                        <td>
                            @if ($loop->first)
                                Zaakceptuj: {!! Form::checkbox('$DeleteReport[]', $client->id, true) !!}
                                Odrzuć: {!! Form::checkbox('$RestoreReport[]', $client->id) !!}
                            @else
                                Zaakceptuj: {!! Form::checkbox('$DeleteReport[]', $client->id) !!}
                                Odrzuć: {!! Form::checkbox('$RestoreReport[]', $client->id) !!}
                            @endif

                        </td>
                    </tr>

            @endforeach

    @else
        <tr>
            <td>Brak rekordów.</td>
        </tr>
    @endif
    </table>

    {{Form::submit('Wyślij')}}
    <div class="page">
        {{$clients->onEachSide(1)->links('pagination::bootstrap-4')}}
    </div>

</div>


</body>
</html>
