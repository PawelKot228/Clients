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
    </style>

</head>
<body>
{!! Form::open(['action' => ['App\Http\Controllers\ClientsController@AddData', 'method' => 'POST']]) !!}
    {{Form::text('name', '', ['placeholder' => 'Imię', 'maxlength' => 255])}}
    {{Form::email('email', '', ['placeholder' => 'E-Mail', 'maxlength' => 255])}}
    {{Form::textarea('textContent', '', ['placeholder' => 'Tekst'])}}
    {{Form::submit('Wyślij')}}
{!! Form::close() !!}

<div>
    @if (isset($errors) && count($errors) > 0)
        @foreach ( $errors->all() as $error)
            <h3 style="color: red; text-align: center">{{$error}}</h3>
        @endforeach
    @endif

    <table>
        <tr>
            <th>ID</th>
            <th>Imię</th>
            <th>Email</th>
            <th>Text</th>
            <th>Data Dodania</th>
            <th>Edytuj / Usuń</th>
        </tr>


        @if(count($clients) > 0)
            @foreach($clients as $client)
                <tr>
                    <td>{{$client->id}}</td>
                    <td>{{$client->name}}</td>
                    <td>{{$client->email}}</td>
                    <td>{{$client->textContent}}</td>
                    <td>{{$client->created_at}}</td>
                    <th>{!! Form::checkbox('clientIDs[]', $client->id) !!}</th>

                </tr>
            @endforeach
    </table>

        @else
            <tr>
                <td>Brak rekordów.</td>
            </tr>
    </table>
        @endif

        <div class="page">
            {{$clients->onEachSide(1)->links('pagination::bootstrap-4')}}
        </div>

</div>
</body>
</html>
