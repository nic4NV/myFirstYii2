<?php

namespace app\moduls\admin\models;

use Yii;

/**
 * This is the model class for table "news".
 *
 * @property integer $id
 * @property string $title
 * @property string $public_date
 * @property string $upload_date
 * @property string $content
 * @property string $preview
 * @property string $link
 */
class News extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'news';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'public_date', 'content', 'preview', 'link'], 'required'],
            [['public_date', 'upload_date'], 'safe'],
            [['content', 'preview', 'link'], 'string'],
            [['title'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'public_date' => 'Public Date',
            'upload_date' => 'Upload Date',
            'content' => 'Content',
            'preview' => 'Preview',
            'link' => 'Link',
        ];
    }
}
