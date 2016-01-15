<h1><span class="label label-info">充值记录</span></h1>
<table class="table">
    <tr>
        <td>账号ID</td>
        <td>商品ID</td>
        <td>商店名称</td>
        <td>商品价格</td>
        <td>支付类型</td>
        <td>用户渠道</td>
        <td>服务器生成的订单号</td>
        <td>对接方生成的订单号</td>
        <td>支付金额</td>
        <td>错误信息</td>
        <td>时间戳</td>
    </tr>
        <?php foreach ($pay_list as $info): ?>
        <tr class="<?= $info["error_message"]=='ok'?'bg-primary':'bg-danger';?>" class="">
            <td><?=$info["account_id"]?></td>
            <td><?=$info["goods_id"]?></td>
            <td><?=$info["goods_name"]?></td>
            <td><?=$info["goods_price"]?></td>
            <td><?=$info["pay_type"]?></td>
            <td><?=$info["user_channel"]?></td>
            <td><?=$info["bill_id"]?></td>
            <td><?=$info["net_bill_id"]?></td>
            <td><?=$info["pay_amt"]?></td>
            <td><?=$info["error_message"]=='ok'?"充值成功":"充值失败---".$info["error_message"];?></td>
            <td><?=$info["datatime"]?></td>
        </tr>
        <?php endforeach; ?>
</table>
<br />

