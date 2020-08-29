<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Email extends Model
{
    //
    protected $fillable = [
        'subject', 'body', 'email_lead', 'status', 'resolved_by', 'category_id', 'date'
    ];

    public function category(){
        return $this->belongsTo('App\Category');
    }

    public function user(){
        return $this->belongsTo('App\User','resolved_by');
    }
}
