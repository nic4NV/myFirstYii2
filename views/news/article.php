<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

?>

<div class="col-md-8 col-md-offset-2 panel panel-default"> <!-- article -->
    <div class="panel-heading"> 
        <h3 class="panel-title"><?= $newsItem->title ?></h3>
    </div>
    <div class="panel-body">
        <img src="<?= $newsItem->preview ?>" class="img-rounded center-block img-responsive" alt="" >
        <?= $newsItem->content ?>
        <a href="<?= $newsItem->link ?>" target="_blank"></br><?= $newsItem->link ?></a>
    </div>  
</div>    <!-- end article -->
    
<div class="col-md-6 col-md-offset-3 panel panel-default">    <!-- comments -->
    <table class="table" class="table table-condensed">
        <tbody>
            <?php foreach ($newsItem->comments as $comment): ?>
                <tr>
                    <td><?= $comment->user->username ?></td>
                    <td><?= $comment->date ?></td>
                </tr>
                <tr>
                    <td></td>
                    <td><?= $comment->post ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
        
        <?php if (Yii::$app->user->isGuest): ?>
        <div class='alert alert-info'>
                <h4>Please log in to post comments </h4>
            </div>
        <?php else: ?>
        
        <div class="col-lg-5">
            <?php $form = ActiveForm::begin(); ?>

            <?= $form->field($model, 'post')->textarea(['rows' => '6']) ?>

            <div class="form-group">
                <?= Html::submitButton('post', ['class' => 'btn btn-primary']) ?>
            </div>
            <?php ActiveForm::end(); ?>
        </div>
        
        <?php endif; ?>
    </table>

</div>  <!-- end comments -->


 