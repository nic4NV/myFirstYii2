<?php

namespace app\models;
 
use Yii;
use yii\base\Model;
 

class CommentsForm extends Model
{
 
    public $post;
 
    public function rules()
    {
        return [
            ['post', 'required'],
            ['post', 'string', 'max' => 255]
        ];
    }
    
 
    public function comments()
    {
 
        if (!$this->validate()) {
            return null;
        }
 
        $comments = new Comments();
        $comments->post = $this->post;
        $comments->user_id = Yii::$app->user->identity->id;
        $comments->news_id = Yii::$app->request->get('id');
        //$comments->news_id = '1513';
        return $comments->save() ? $comments : null;
    }
 
}

