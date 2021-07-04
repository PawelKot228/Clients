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
            color: coral;
        }
    </style>

</head>
<body>
<form action="AddData" method="POST">
    @csrf

    <input type="text" name="name" id="" placeholder="Imię">
    <input type="email" name="email" id="" placeholder="E-mail">
    <textarea type="textarea" rows="6" cols="70" name="textContent" id="" placeholder="Tekst"></textarea>
    <button type="submit">Wyślij</button>
</form>

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
                </tr>
            @endforeach
    </table>
    <div class="page">
        {{$clients->onEachSide(1)->links('pagination::bootstrap-4')}}
    </div>
        @else
            <tr>
                <td>Brak rekordów.</td>
            </tr>
    </table>
        @endif


</div>
</body>
</html>
