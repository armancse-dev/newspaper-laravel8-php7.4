<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class page extends Model
{
    protected $table = 'pages';
    protected $primaryKey = 'pageid';
    use HasFactory;
}
