<?php

namespace App\Http\Controllers;

use App\Email;
use App\User;
use Illuminate\Support\Facades\Auth;
use App\Mail\FwEmail;
use Illuminate\Support\Facades\Mail;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home.index');
    }

    public function setStatusUser(Request $request)
    {
        $status = $request->get('status');
        //schimbam in DB statusul userului
        $current_user = User::find(Auth::user()->id);
        $current_user->status = $status;
        $current_user->save();

        return $this->nextEmail($status);
    }

    public function nextEmail($status)
    {
        if ($status == 1) {

            //aducem din DB emailul care sa apare userului pe pagina 
            $email = Email::where('status', '=', 'pending')->orderBy('date')->take(1)->get();

            //daca in lista mai sunt emailuri:
            if (count($email) > 0) { //dd((time() - $email[0]->updated_at->timestamp) >= 120);
                $email[0]->updated_at = time();
                $email[0]->status = 'processing';
                $email[0]->save();
                return view('emailProcessingPage', compact("email"));
            } else {
                //daca lista e terminata redirectionam userul inspre pagina home cu mesaj:
                return redirect()->route("index")->withsuccess("Nu mai sunt emailuri de prelucrat! Poti merge la piscina!");
            }
        } else {
            return redirect()->route("index")->withsuccess("Trebuie sa bifezi Available ca sa poti categoriza emailuri");
        }
    }

    public function categorize(Request $request)
    {
        $current_email = $this->updateEmail($request, 'finished');
        
        $this->sendEmail($current_email);

        return $this->nextEmail(Auth::user()->status);
    }

    public function deleteEmail(Request $request)
    {
        $this->updateEmail($request, 'deleted');

        return $this->nextEmail(Auth::user()->status);
    }

    public function sendEmail($email){
        $details = [
            'title' => $email->subject,
            'body' => $email->body
        ];        
        
        Mail::to('remusovidiu1@gmail.com')->send(new FwEmail($details));
    }

    public function updateStatus(Request $request){
        $current_email = Email::find($request->get('id'));
        $current_email->status = 'pending';
        $current_email->save();
    }

    public function updateEmail(Request $request, $status)
    {
        $category = $request->get('category');
        $idEmail = $request->get('idEmail');
        
        $current_email = Email::find($idEmail);
        $current_email->category_id = $category;
        $current_email->status = $status;
        $current_email->resolved_by = Auth::user()->id;
        $current_email->save();

        return $current_email;
    }
}
