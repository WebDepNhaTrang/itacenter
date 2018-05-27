<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;
use App\Mail\ContactEmail;

class ContactController extends Controller
{
    public function store(Request $request)
    {
        $contact = [];

        $contact['name'] = $request->get('name');
        $contact['email'] = $request->get('email');
        $contact['phone'] = $request->get('phone');
        $contact['obj'] = $request->get('obj');
        $contact['msg'] = $request->get('msg');

        // Mail delivery logic goes here
        Mail::to(setting('contact.send_to_email'))->send(new ContactEmail($contact));

        return back()->with('success', 'Cảm ơn bạn đã liên hệ chúng tôi!');
    }
}
