<?php

namespace App\Repositories;

use App\Models\Blog;
use App\Models\File;


/**
 * Class EloquentBlogRepository
 * @package App\Repositories
 */
class EloquentBlogRepository
{

    /**
     * @var Blog
     */
    protected $blogModel;

    /**
     * @var Blog
     */
    protected $fileModel;


    /**
     * EloquentBlogRepository constructor.
     *
     * @param Blog $blogEntity
     * @param File $fileEntity
     */
    public function __construct(Blog $blogEntity, File $fileEntity)
    {
        $this->blogModel = $blogEntity;
        $this->fileModel = $fileEntity;
    }

    /**
     * @return Mixed
     */
    public function all()
    {
        $result = Blog::with('file')->get();

        return $result;
    }

    /**
     * @param $message
     * @param $username
     * @param $email
     * @param $website
     * @param $fileId
     *
     * @return Mixed
     */
    public function create($message, $username, $email, $website, $fileId)
    {
        $userIP = request()->ip();
        $userInfo = json_encode(request()->header('User-Agent'));
        $result = new $this->blogModel([
            'message' => $message,
            'username' => $username,
            'email' => $email,
            'website' => $website,
            'user_ip' => $userIP,
            'browser_data' => $userInfo,
            'file_id' => $fileId
        ]);
        $result->save();

        return $result;
    }

    /**
     * @param $name
     * @param $size
     * @param $type
     * @param $src
     *
     * @return Mixed
     */
    public function upload($name, $size, $type, $src) {
        $result = new $this->fileModel([
            'name' => $name,
            'size' => $size,
            'type' => $type,
            'src' => $src
        ]);

        $result->save();

        return $result;
    }



}
