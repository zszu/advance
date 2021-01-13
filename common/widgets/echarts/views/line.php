

<div class="card">
    <div class="card-header"><h4><?= $title;?></h4></div>
    <div class="card-body">
        <canvas class="chart-<?= $type;?>" id="<?= $id;?>"></canvas>
    </div>
</div>

<?php
$this->registerJs(<<<JS
    // json 对象 转为数组
    var labels = $labels;
    var datasets = $datasets;
    var labels2 = [];
    for (let i in labels){
        labels2.push(labels[i]);
    }
    var that = $("#$id")[0].getContext( '2d' );
    
    new Chart(that, {
        type: "$type",
        data: {
            labels: labels2,
            datasets: datasets
        },
    });
JS
);?>