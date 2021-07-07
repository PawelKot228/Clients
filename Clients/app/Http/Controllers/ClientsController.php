<?php

namespace App\Http\Controllers;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
use App\Models\Client;
use Illuminate\Auth\Events\Validated;
use Illuminate\Support\Facades\Validator;

use function GuzzleHttp\Promise\all;

class ClientsController extends Controller
{
    public function index()
    {
        $clients = Client::orderBy('created_at', 'desc')->paginate(5);
        return view('index')->with('clients', $clients);
    }

    public function AddData(Request $req)
    {
        $validator = Validator::make($req->all(), [
            'name' => 'required|max:255',
            'email' => 'sometimes|max:255',
            'textContent' => 'required'
        ])->validate();

        $client = new Client();
        $client->name = $req->name;
        $client->email = $req->email;
        $client->textContent = $req->textContent;

        $client->save();

        return redirect('/');
    }


}
