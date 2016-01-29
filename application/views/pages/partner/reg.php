<label class="label label-info">注册</label><br /><br />
<div style="width: 300px">
<form action="<?=site_url('partner/reg');?>" method="post" accept-charset="utf-8">
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
    <div class="form-group">
        <label>确认登陆密码</label>
        <input type="password"  name="passconf" class="form-control" placeholder="">
        <?=form_error('passconf','<small class="text-muted" style="color: #ff0000;margin-left: 12px">','</small>'); ?>
    </div>
    <button type="submit" class="btn btn-primary">注册</button>
</form>
</div>