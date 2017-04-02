<?php

namespace app\models;
 
use Yii;
use yii\base\Model;
 

class SignupForm extends Model
{
 
    public $username;
    public $password;
    public $email;
 
    public function rules()
    {
        return [
            ['username', 'trim'],
            ['username', 'required'],
            ['username', 'unique', 'targetClass' => '\app\models\User', 'message' => 'This username has already been taken.'],
            ['username', 'match', 'pattern' => '#[A-ZА-ЯЁa-zа-яё\-]{2,15}$#u'],
            ['email', 'required'],
            ['email', 'email'],
            ['email', 'unique', 'targetClass' => '\app\models\User', 'message' => 'This email has already been taken'],
            ['password', 'required'],
            ['password', 'string', 'min' => 6],
        ];
    }
    
 
    public function signup()
    {
 
        if (!$this->validate()) {
            return null;
        }
 
        $user = new UserIdentity();
        $user->username = $this->username;
        $user->email = $this->email;
        $user->password = md5($this->password);
        $user->generateAuthKey();
        return $user->save() ? $user : null;
    }
 
}

