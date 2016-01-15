<div></div>
      <h1 style="display: block;float: left;"><span class="label label-info">充值总人数:<?php echo $count;?>人/总金额:<?=$total_price;?>元/共有<?php echo $total_count;?>条记录</span></h1>

            <div class="dropdown" style="display:block;float: left;top: 32px;left: 50px;">
                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    排序(默认时间排序)
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                    <li><a href="<?=site_url('pay/index/datatime/'.$startRecordIndex)?>">时间倒序</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="<?=site_url('pay/index/goods_price/'.$startRecordIndex)?>">金额倒序</a></li>
                </ul>
            </div>

<div style="clear: left"></div>


<?php //print_r($pay_list);?>
<!--goods_price account_id-->
<table class="table">
    <tr>
        <td>充值用户ID</td>
        <td>充值总金额</td>
        <td>充值总次数</td>
        <td>最近一次充值时间</td>
        <td>第一次充值时间</td>
        <td>详情跳转</td>
    </tr>

<?php foreach ($pay_list as $pay_item): ?>
    <tr>
        <td><?=$pay_item["account_id"]?></td>
        <td><?=$pay_item["goods_price"]?>元</td>
        <td><?=$pay_item["num"]?>次</td>
        <td><?=$pay_item["last_time"]?></td>
        <td><?=$pay_item["first_time"]?></td>
        <td><a href="<?=site_url('player/index/'.$pay_item["account_id"]); ?>">查看详情</a></td>
    </tr>
<?php endforeach; ?>


</table>
<br />
<div class="row">
<?=$pages;?>
</div>
