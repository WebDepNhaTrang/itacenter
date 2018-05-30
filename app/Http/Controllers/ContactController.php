<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactEmail;
use Illuminate\Support\Facades\Log;

class ContactController extends Controller
{
    public function store(Request $request)
    {
        try {
            $contact = [];

            $contact['name'] = $request->get('name');
            $contact['email'] = $request->get('email');
            $contact['phone'] = $request->get('phone');
            $contact['obj'] = $request->get('obj');
            $contact['msg'] = $request->get('msg');

            Mail::to(setting('contact.send_to_email'))->send(new ContactEmail($contact));

            return back()->with('success', 'Cảm ơn bạn đã liên hệ chúng tôi!');
        } catch (Exception $ex) {
            info($ex->getMessage());
            return back()->with('success', 'Quá trình gửi mail lỗi!');
        }
        
    }
}
