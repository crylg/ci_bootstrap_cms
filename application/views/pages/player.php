<h1><span class="label label-info"><?=$title;?>--<?=$info["name"]?></span></h1>
<div class="row">
    <div class="col-lg-5">
        <ul class="list-group" >
            <li class="list-group-item">激活时间:<b><?=$activeTime;?></b></li>
            <li class="list-group-item">第一次充值时间:<b><?=$activeTime;?></b></li>
            <li class="list-group-item">最近一次充值时间:<b><?=$lastPayTime;?></b></li>
            <li class="list-group-item">玩游戏后<b><?=$diffUnix;?></b>进行第一次充值</li>
            <li class="list-group-item">总充值次数(成功):<b><?=$count_price;?></b>次</li>
            <li class="list-group-item">总充值金额(成功):<b><?=$total_price;?></b>元</li>
        </ul>
    </div>
    <div class="col-lg-3">
        <script src="<?php echo base_url('assets/js/Chart.min.js') ?>"></script>
        <canvas id="chart-area" width="250" height="250"/>
        <script>

            var pieData = [
                {
                    value: <?=$match_count;?>,
                    color:"#F7464A",
                    highlight: "#FF5A5E",
                    label: "竞技场"+Math.ceil(<?=$room_count!=0?$match_count/($match_count+$room_count)*100:0;?>)+"%/总场数"
                },
                {
                    value: <?=$room_count;?>,
                    color: "#46BFBD",
                    highlight: "#5AD3D1",
                    label: "自由场"+Math.ceil(<?=$room_count!=0?$room_count/($match_count+$room_count)*100:0;?>)+"%/总场数"
                }
            ];
            var pieOption={
                animationEasing:'easeInQuint',
                animationSteps:50
            };
           onLoadFunctions.push(function(){
                var ctx = document.getElementById("chart-area").getContext("2d");
                window.myPie = new Chart(ctx).Pie(pieData,pieOption);
            });
        </script>
    </div> <!--图表canvas-->
    <div class="col-lg-4">
        <ul class="list-group" >
            <li class="list-group-item" style="background-color: #46BFBD">自由场次数:<b><?=$room_count;?></b></li>
            <li class="list-group-item" style="background-color: #F7464A">竞技场次数:<b><?=$match_count;?></b></li>
            <li class="list-group-item" style="background-color: #46BFBD">自由场获得金币数:<b><?=$room_sum;?></b></li>
            <li class="list-group-item" style="background-color: #F7464A">竞技场获得金币数<b><?=$match_sum;?></b></li>
            <li class="list-group-item" >次数比值(自由:竞技):<b><?=$room_count!=0?ceil($room_count/($match_count+$room_count)*100):0;?>%:<?=$match_count!=0?ceil($match_count/($match_count+$room_count)*100):0;?>%</b></li>
            <li class="list-group-item" >金币比值(自由:竞技):<b><?=$room_count!=0?ceil($room_sum/($match_sum+$room_sum)*100):0;?>%:<?=$room_count!=0?ceil($match_sum/($match_sum+$room_sum)*100):0;?>%</b></b></li>
        </ul>
    </div>
</div>
<table class="table">
    <tr>
        <td>角色ID</td>
        <td>名字</td>
        <td>等级</td>
        <td>角色索引</td>
        <td>金币数量</td>
        <td>钻石数量</td>
        <td>小喇叭数量</td>
        <td>记牌器数量</td>
        <td>经验</td>
        <td>离线时间</td>
        <td>累计胜利场数</td>
        <td>签到次数</td>
        <td>签到时间</td>
        <td>输的盘数</td>
        <td>称号</td>
        <td>VIP等级</td>
        <td>VIP到期时间戳</td>
        <td>水果机收益金币数</td>
    </tr>

<!--    --><?php //foreach ($pay_list as $pay_item): ?>
        <tr>
            <td><?=$info["id"]?></td>
            <td><?=$info["name"]?></td>
            <td><?=$info["level"]?></td>
            <td><?=$info["avatar"]?></td>
            <td><?=$info["gold"]?></td>
            <td><?=$info["diamond"]?></td>
            <td><?=$info["call_prop"]?></td>
            <td><?=$info["card_prop"]?></td>
            <td><?=$info["exp"]?></td>
            <td><?=unix_to_human($info["offline_timestamp"],TRUE,null);?></td>
            <td><?=$info["win_num"]?></td>
            <td><?=$info["sign_num"]?></td>
            <td><?=unix_to_human($info["sign_timestamp"],TRUE,null)?></td>
            <td><?=$info["lost_num"]?></td>
            <td><?=$info["title"]?></td>
            <td><?=$info["vip_level"]?></td>
            <td><?=$info["vip_exp"]?></td>
            <td><?=$info["fruit_slots_gold"]?></td>
        </tr>
<!--    --><?php //endforeach; ?>


</table>
<br />

