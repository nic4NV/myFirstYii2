<?php

namespace app\moduls\admin\controllers;

use Yii;
use app\moduls\admin\models\News;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * NewsController implements the CRUD actions for News model.
 */
class NewsController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all News models.
     * @return mixed
     */
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => News::find(),
        ]);
        if (!Yii::$app->user->isGuest) {
            if (Yii::$app->user->identity->access_token === '100-token') {
                return $this->render('index', [
                            'dataProvider' => $dataProvider,
                ]);
            } else {
                return $this->render('accessDenied');
            }
        } else {
                return $this->render('accessDenied');
        }
    }

    /**
     * Displays a single News model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        if (!Yii::$app->user->isGuest) {
            if (Yii::$app->user->identity->access_token === '100-token') {
                return $this->render('view', [
                            'model' => $this->findModel($id),
                ]);
            } else {
                return $this->render('accessDenied');
            }
        } else {
            return $this->render('accessDenied');
        }
    }

    /**
     * Creates a new News model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        if (!Yii::$app->user->isGuest) {
            if (Yii::$app->user->identity->access_token === '100-token') {
                $model = new News();

                if ($model->load(Yii::$app->request->post()) && $model->save()) {
                    return $this->redirect(['view', 'id' => $model->id]);
                } else {
                    return $this->render('create', [
                                'model' => $model,
                    ]);
                }
            } else {
                return $this->render('accessDenied');
            }
        } else {
            return $this->render('accessDenied');
        }
    }

    /**
     * Updates an existing News model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
         if (!Yii::$app->user->isGuest) {
            if (Yii::$app->user->identity->access_token === '100-token') {
                $model = $this->findModel($id);

                if ($model->load(Yii::$app->request->post()) && $model->save()) {
                    return $this->redirect(['view', 'id' => $model->id]);
                } else {
                    return $this->render('update', [
                                'model' => $model,
                    ]);
                }
            } else {
                return $this->render('accessDenied');
            }
        } else {
            return $this->render('accessDenied');
        }
    }

    /**
     * Deletes an existing News model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        if (!Yii::$app->user->isGuest) {
            if (Yii::$app->user->identity->access_token === '100-token') {
                $this->findModel($id)->delete();

                return $this->redirect(['index']);
            } else {
                return $this->render('accessDenied');
            }
        } else {
            return $this->render('accessDenied');
        }
    }

    /**
     * Finds the News model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return News the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = News::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
