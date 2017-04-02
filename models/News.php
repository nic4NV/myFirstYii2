<?php

namespace app\models;
use yii\db\ActiveRecord;

class News extends ActiveRecord{
    
    public function getComments() 
    {
        return $this->hasMany(Comments::className(), ['news_id' => 'id']);        
    }
    
    public static function tableName() {
        return 'news';
    }
     
    public static function getXML($file_url) {   // getting XML and making array
        $XMLFile = simplexml_load_file($file_url);
        $data = array();
        for ($i = 0; $i < 20; $i++) {
            $data[$i]['title'] = $XMLFile->channel->item[$i]->title;
            $data[$i]['description'] = $XMLFile->channel->item[$i]->description;
            $data[$i]['enclosure'] = $XMLFile->channel->item[$i]->enclosure['url'];
            $data[$i]['pubDate'] = $XMLFile->channel->item[$i]->pubDate;
            $data[$i]['link'] = $XMLFile->channel->item[$i]->link;
        }
        return ($data);
    }
    
    public static function dataUpdate($data) {
        $newsItem = new News();
        foreach ($data as $dataItem) {
            $newsItem->isNewRecord = true;
            $newsItem->id = null;
            $newsItem->title = addslashes($dataItem['link']);
            $newsItem->content = addslashes($dataItem['description']);
            $newsItem->public_date = date("Y-m-d H:i:s", strtotime($dataItem['pubDate']));
            $newsItem->preview = $dataItem['enclosure'];
            $newsItem->link = $dataItem['link'];
            $newsItem->save();
        }
    }

}
