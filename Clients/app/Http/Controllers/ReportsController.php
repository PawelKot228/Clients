<?php

namespace App\Http\Controllers;

use App\Mail\NewUserNotification;
use App\Models\Client;
use App\Models\Report;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;


class ReportsController extends Controller
{
    public function SendReport()
    {
        $clients = Client::orderBy('created_at', 'desc')->paginate(5);
        return view('sendReport')->with('clients', $clients);
    }
    public function StoreReport(Request $request)
    {
        $validator = Validator::make($request->all(), [
            '$reportedClient' => 'required',
            'description' => 'required|max:255'
        ])->validate();

        $report = new Report();
        $report->id_client = $request['$reportedClient'];
        $report->description = $request->description;

        $report->save();

        $client = Client::find($request['$reportedClient']);
        $client->status = -1;

        $client->save();

        return redirect('sendReport');
    }
    public function HandleReport(Request $request)
    {

        if(isset($request['$DeleteReport']) && count($request['$DeleteReport']) > 0) {
            foreach ($request['$DeleteReport'] as $c) {
                Client::Find($c)->delete();
            }
            $data = ['message' => 'Zostaly usuniete osoby z id: '.join(", ", $request['$DeleteReport'])];
            Mail::to('pawelkot898@gmail.com')->send(new NewUserNotification($data));
        }
        if(isset($request['$RestoreReport']) && count($request['$RestoreReport']) > 0)
        {
            foreach ($request['$RestoreReport'] as $c)
            {
                $client = Client::Find($c);
                $client->status = 1;
                $client->save();
            }
            $data = ['message' => 'Zostaly przywrocone osoby z id: '.join(", ", $request['$RestoreReport'])];
            Mail::to('pawelkot898@gmail.com')->send(new NewUserNotification($data));
        }



        return redirect('dashboard');

    }
}
