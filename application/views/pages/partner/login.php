<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * * User: leiguan
 * Date: 2016/1/26
 * Time: 10:40
 */
?>
<label class="label label-info">登陆</label><br /><br />

<div style="width: 300px">
    <form action="<?=site_url('partner/login');?>" method="post" accept-charset="utf-8">
        <div class="form-group">
            <label>运营商名称</label>
            <input type="text" name="username" class="form-control"  placeholder="admin">
            <?=form_error('username','<small class="text-muted" style="color: #ff0000;margin-left: 12px">','</small>'); ?>
        </div>
        <div class="form-group">
            <label>后台登陆密码</label>
            <input type="password"  name="password" class="form-control" placeholder="">
            <?=form_error('password','<small class="text-muted" style="color: #ff0000;margin-left: 12px">','</small>'); ?>
        </div>

        <button type="submit" class="btn  btn-success">登陆</button>
    </form>
</div>
