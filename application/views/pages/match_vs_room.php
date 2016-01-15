<style type="text/css">
/*    #chart {*/
/**/
/*        background: #fff;*/
/*        border-radius: 20px;*/
/*        padding: 20px;*/
/*        margin: 20px auto;*/
/*        box-shadow: 0 0 40px #ddd;*/
/*        behavior: url(*/<?//=base_url('assets/js/PIE.htc');?>/*);*/
/**/
/*    }*/
</style>
<div class="panel panel-success">
    <div class="panel-heading">竞技场与自由房对比图</div>

    <div class="panel-body">
        <div class="row">
            <div class="col-lg-4"><canvas id="chart" width="400" height="250" /></div>

        </div>
    </div>
</div>
<script src="<?php echo base_url('assets/js/Chart.min.js') ?>"></script>
<script>

    onLoadFunctions.push(function(){
        var pieData = [
            {
                value: <?=$matchCount;?>,
                color:"#F7464A",
                highlight: "#FF5A5E",
                label: "竞技场比值:"+Math.ceil(<?= $matchCount/($matchCount+$roomCount)*100;?>)+"%/总场数"

            },
            {
                value: <?=$roomCount;?>,
                color: "#46BFBD",
                highlight: "#5AD3D1",
                label: "自由场比值:"+Math.ceil(<?= $roomCount/($roomCount+$matchCount)*100;?>)+"%/总场数"
            }
        ];
        var pieOption={
            animationEasing:'easeInQuint',
            animationSteps:50
        };
        var ctx = document.getElementById("chart").getContext("2d");
        //behavior: url(public/ie-css3.htc);
//        document.getElementById("chart").style.behavior="url('<?//=base_url('assets/js/PIE.htc');?>//')";
        window.myPie = new Chart(ctx).Pie(pieData,pieOption);
    });

</script>