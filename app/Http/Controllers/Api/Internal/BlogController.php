<?php

namespace App\Http\Controllers\Api\Internal;

use App\Repositories\EloquentBlogRepository;
use App\Services\BlogService;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class BlogController extends Controller
{
    /**
     * @var EloquentBlogRepository
     */
    protected $repo;

    /**
     * BlogController constructor.
     *
     * @param EloquentBlogRepository $repo
     */
    public function __construct(EloquentBlogRepository $repo)
    {
        $this->repo = $repo;
    }


    /**
     * Display a listing of the resource.
     *
     * @return Mixed
     */
    public function index()
    {
        return $this->repo->all();
    }

    /**
     * Create new blog.
     *
     * @param Request $request
     *
     * @return Mixed
     */
    public function store(Request $request)
    {
        $blogService = new BlogService(app()->make(EloquentBlogRepository::class));

        return $blogService->create($request->all());
    }

    /**
     * Upload file for blog.
     *
     * @param Request $request
     *
     * @return Mixed
     */
    public function uploadFile(Request $request)
    {
        $blogService = new BlogService(app()->make(EloquentBlogRepository::class));

        $file = $request->file('file');

        if (!$file) {
            return $file;
        }

        //$file = Storage::disk('public')->store('images'); for local environment
        $file = Storage::disk('public')->put('', $request->file('file'));

        $result = $blogService->upload($request->get('file_info'), $file);

        if (!$result) {
            Storage::delete($request->file('file'));
            return ['error' => 'Could not upload file'];
        }

        return $result;
    }

}
