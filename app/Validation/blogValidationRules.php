<?php
/**
 * Created by PhpStorm.
 * User: Work
 * Date: 10/1/2018
 * Time: 1:59 PM
 */

namespace App\Validation;
use App\Rules\Captcha;


/**
 * Class BlogValidationRules
 *
 * @package App\Validation
 */
class BlogValidationRules
{
    /**
     * @return array
     */
    public static function getRules()
    {
        $rules = [
            'message' => 'required|max:8192',
            'username' => 'required|max:32',
            'email' => 'required|email',
            'website' => 'max:128|url|nullable',
            'captcha' => new Captcha(),
        ];

        return $rules;
    }

    /**
     * @return array
     */
    public static function getUploadRules()
    {
        $rules = [
            'name' => 'required|max:128',
            'size' => 'required',
            'type' => 'required'
        ];

        return $rules;
    }

}
