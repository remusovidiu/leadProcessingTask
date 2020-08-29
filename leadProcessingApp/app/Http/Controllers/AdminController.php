<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Email;
use App\User;

class AdminController extends Controller
{
    public function index()
    {
        $emails = Email::where('status', '=', 'deleted')->orWhere('status', '=', 'finished')->orderBy('updated_at')->get();
        return view('admin.index', compact("emails", $emails));
    }

    public function edit($id)
    {
        $emails = Email::find($id);
        //dd($emails);
        return view('admin.edit', compact("emails", $emails));
    }

    public function update(Request $request, $id)
    {
        $category = $request->get('category');
        $current_email =  Email::find($id);
        $current_email->category_id = (int)$category;
        $current_email->save();

        return redirect()->route("admin-index")->withsuccess("Category was updated!");
    }

    public function updateStatus($id)
    {
        $current_email =  Email::find($id);
        $current_email->status = 'pending';
        $current_email->save();

        return redirect()->route("admin-index")->withsuccess("Status was updated!");
    }
}
