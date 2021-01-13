# echarts 使用
```

new Chart($("#chart-line-2"), {
    type: 'line', 
    /**
      *
      *图形 line:线型 bar：垂直柱型 horizontalBar：水平柱型
      * pie：饼图 doughnut：环形图 radar：雷达 polarArea:极区图
      * bubble：气泡图
      */
    data: {
        labels: ["一月", "二月", "三月", "四月"],
        datasets: [{
            label: "收入",
            fill: false, //是否显示 面积
            borderWidth: 3,
            pointRadius: 5,
            borderColor: "#9966ff",
            pointBackgroundColor: "#9966ff",
            pointBorderColor: "#9966ff",
            pointHoverBackgroundColor: "#fff",
            pointHoverBorderColor: "#9966ff",
            data: [30, 25, 35, 23]
        }]
    },
    options: {
        legend: {
            display: false //是否显示 数据中的 label
        },
    }
});
```