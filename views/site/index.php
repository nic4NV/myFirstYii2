<?php

/* @var $this yii\web\View */

$this->title = 'My Yii Application';
?>
<div class="site-index">

    <div class="jumbotron">
        <h1>Hello, <?php if (!Yii::$app->user->isGuest) {echo Yii::$app->user->identity->username;} else { echo "guest";} ?>!</h1>

        <p class="lead">Wellcome to the RSS aggregator project powered with Yii2!</p>

        <p><a class="btn btn-lg btn-success" href="/myFirst.Yii">Go to newspage!</a></p>
    </div>

 
</div>
