<?php
//$str='';
//$infoStr='';
//    foreach ($room_type_array as $rk => $rn)
//    {
//        $rk="total_".$rk;
//        $cur_total=$total_list[$rk];
//        $infoStr.= "<span  style='width: 130px;line-height:30px;float: left;display: block'>".$rn.":";
//        $infoStr.= $cur_total;
//        $infoStr.= "</span>";
//        if($cur_total==0) continue;
//        $str.="{";
//        $str.= "value:".$cur_total;
//        $str.= ',';
//        $str.= "label:'$rn 占比:".ceil($cur_total/$total_list["total"]*100)."%/场数'";
//        $str.= ',';
//        $str.="highlight: '#999999'";
//        $str.= '},';
//    }

?>

<div class="panel panel-success">
    <div class="panel-heading"><?=$title;?></div>

    <div class="panel-body">
        <div class="row">
            <div class="col-lg-4"><canvas id="<?=$canvasID;?>" width="400" height="250"/></div>
            <div class="col-lg-8"><p><?=$infoStr;?></p></div>
        </div>
    </div>
</div>

<script src="<?php echo base_url('assets/js/Chart.min.js') ?>"></script>
<script>

   onLoadFunctions.push(function(){
        var pieData = [
            <?=$str;?>
        ];
        var pieOption={
            animationEasing:'easeInQuint',
            animationSteps:50
        };
        var ctx = document.getElementById("<?=$canvasID;?>").getContext("2d");
        window.myPie = new Chart(ctx).Pie(pieData,pieOption);
    });

</script>

