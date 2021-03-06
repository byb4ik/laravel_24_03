<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Engineer extends Model
{
    use HasFactory;

    /**
     * @var string
     */
    protected $table = 'engineers';
    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'auto_id',
    ];
}
