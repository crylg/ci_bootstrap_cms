<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: leiguan
 * Date: 2016/1/27
 * Time: 16:02
 */
?>

<?foreach ($outlineDays as $item):?>

<div class="row">
    <div class="col-lg-3">
        <ul class="list-group" >
            <li class="list-group-item" style="background-color: #F6BFBD">时间:<b><?=$item["distHumanDate"];?></b></li>
            <li class="list-group-item">下注参与次数:<b><?=$item["count"];?></b></li>
            <li class="list-group-item">下注总金额:<b><?=$item["chipMoney"];?></b></li>
            <li class="list-group-item">收益总金额:<b><?=$item["chipMoney"]/100000;?>元</b></li>
            <li class="list-group-item">收益净金额:<b><?=$item["getMoney"]-$item["chipMoney"];?></b></li>
        </ul>
    </div>
    <div class="col-lg-9">
        <table class="table table-striped">
            <tr>
                <td>角色ID</td>
                <td>下注次数</td>
                <td>下注金额</td>
                <td>收益金额</td>
            </tr>
            <?foreach ($item["players_info"] as $pInfo):?>
                <tr>
                    <td><?=$pInfo["account_id"]?></td>
                    <td><?=$pInfo["count"]?></td>
                    <td><?=$pInfo["chipMoney"]?></td>
                    <td><?=$pInfo["chipMoney"]/100000?>元</td>
                </tr>
            <?endforeach;?>
        </table>
    </div>
</div>
<?endforeach;?>
