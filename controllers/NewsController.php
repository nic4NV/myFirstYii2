<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\News;
use app\models\Comments;
use app\models\CommentsForm;

class NewsController extends AppController {
    
    public function actionIndex() {
        $query = News::find()->select('id, title, public_date, upload_date')->orderBy('public_date DESC');
        $pages = new \yii\data\Pagination(['totalCount' => $query->count(), 'pageSize' => 10, 'pageSizeParam' => false, 'forcePageParam' => false]);
        $newsList = $query->offset($pages->offset)->limit($pages->limit)->all();
        return $this->render('index', compact('newsList', 'pages'));   
    }
    
    public function actionArticle() {
        
        $id = \Yii::$app->request->get('id');
        $newsItem = News::findOne($id);
        if(empty($newsItem)) throw new \yii\web\HttpException(404, 'There is no this page');
        
        $model = new CommentsForm();
        if ($model->load(Yii::$app->request->post())) {
            if ($comments = $model->comments()) {
                    return $this->render('article', compact('newsItem', ['model']));
            }
        }
        
        $id = \Yii::$app->request->get('id');
        $newsItem = News::findOne($id);
        if(empty($newsItem)) throw new \yii\web\HttpException(404, 'There is no this page');
        return $this->render('article', compact('newsItem', ['model']));
    }
    
    public function actionUpdate() {   //ACTION FOR UPDATE-BUTTON
        if (!Yii::$app->user->isGuest) {
            if (Yii::$app->user->identity->access_token === '100-token') {
                News::deleteAll();
                $data = News::getXML('https://www.nasa.gov/rss/dyn/lg_image_of_the_day.rss');
                News::dataUpdate($data);
                return $this->goHome();
            } else {
                return $this->render('accessDenied');
            }
        } else {
            return $this->render('accessDenied');
        }
    }
}