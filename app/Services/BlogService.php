<?php
/**
 * Created by PhpStorm.
 * User: Work
 * Date: 10/1/2018
 * Time: 12:55 PM
 */

namespace App\Services;

use Validator;
use App\Repositories\EloquentBlogRepository;
use App\Validation\BlogValidationRules;

/**
 * Class BlogService
 *
 * @package App\Services
 */
class BlogService
{
    /**
     * @var EloquentBlogRepository|null
     */
    protected $repo = null;

    /**
     * EloquentBlogRepository constructor.
     *
     * @param EloquentBlogRepository|null $repo
     */
    public function __construct(EloquentBlogRepository $repo = null)
    {
        $this->repo = $repo;
    }

    /**
     * @param array $input
     *
     * @return Mixed
     */
    public function create(array $input)
    {
        $validation = Validator::make($input, BlogValidationRules::getRules());

        if ($validation->fails()) {
            $messages['errors'] = $validation->messages();
            return $messages;
        }

        extract($input);

        is_null($input['src']) ? $id = null : $id = $input['src']['id'];

        $result = $this->repo->create($message, $username, $email, $website, $id);

        return $result;
    }

    /**
     * @param array $input
     * @param string $src
     *
     * @return Mixed
     */
    public function upload(array $input, $src)
    {
        $input['src'] = $src;
        $validation = Validator::make($input, BlogValidationRules::getUploadRules());

        if ($validation->fails()) {
            return redirect('/')
                ->withErrors($validation)
                ->withInput();
        }

        extract($input);

        $result = $this->repo->upload($input['name'], $input['size'], $input['type'], $src);

        if ($result) {
            return $result;
        } else {
            return false;
        }
    }
}
