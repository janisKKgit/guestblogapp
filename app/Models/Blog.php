<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;


/**
 * @property int $id
 * @property string $username
 * @property string $email
 * @property string $website
 * @property string $user_ip
 * @property string $browser_data
 * @propert  int $file_id
 * @property string $message
 * @property string $created_at
 * @property string $updated_at
 */
class Blog extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'guest_book';

    /**
     * @var array
     */
    protected $fillable = ['message', 'username', 'email', 'website', 'user_ip', 'browser_data', 'file_id'];


    public function file()
    {
        return $this->hasOne('App\Models\File', 'id', 'file_id');
    }

}
