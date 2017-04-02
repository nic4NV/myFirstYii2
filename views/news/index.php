<?php if (!empty($newsList)): ?>
    <div class="row"> <!-- main table -->
        <div class="col-md-8 col-md-offset-2">
            <div class="table-responsive">
                <table class="table table-bordered table table-hover table-condensed" >
                    <thead>
                        <tr class="info">
                            <th>ID</th>
                            <th>Title</th>
                            <th>Publication date</th>
                            <th>Upload date</th>
                            <th>Comments</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($newsList as $newsItem): ?>
                            <tr>
                                <td><?= $newsItem->id ?></td>
                                <td><a href="/myFirst.Yii/article/<?= $newsItem->id ?>"><?= $newsItem->title ?></a></td>
                                <td><?= $newsItem->public_date ?></td>
                                <td><?= $newsItem->upload_date ?></td>
                                <td><?= $newsItem->getComments()->count() ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
                    <?= yii\widgets\LinkPager::widget(['pagination' => $pages]) ?>
                
            </div>
    </div> <!-- end main table -->
<?php endif; ?>

