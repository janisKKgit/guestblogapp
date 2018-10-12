<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
/**
 * @property int $id
 * @property string $name
 * @property int $size
 * @property string $type
 * @property string $src
 * @property string $created_at
 * @property string $updated_at
 */
class File extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'files';

    /**
     * @var array
     */
    protected $fillable = ['name', 'size', 'type', 'src'];
}
