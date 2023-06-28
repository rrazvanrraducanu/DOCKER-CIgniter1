<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class WelcomeController extends BaseController
{
    public function index()
    {
        return view('my_view');
    }
}
