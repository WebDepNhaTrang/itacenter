<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class ServicesFront extends Model
{
    protected $table='services_fronts';

    protected $fillable = ['id', 'name', 'description', 'image'];

    public $timestamps = true;
}
