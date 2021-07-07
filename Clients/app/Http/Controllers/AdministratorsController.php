<?php

namespace App\Http\Controllers;

use App\Models\Administrator;
use App\Models\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class AdministratorsController extends Controller
{
    public function SignIn()
    {
        return view('signIn');
    }

    public function Auth(Request $request)
    {

        $credentials = $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required'],
        ]);

        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();

            return redirect()->intended('dashboard');
        }
        return back()->withErrors([
            'email' => 'Podane dane się nie zgadzają',
        ]);

    }

    public function Dashboard(){
        $clients = Client::Where('status', -1)->paginate(5);
        return view('dashboard')->with('clients', $clients);
    }
}
