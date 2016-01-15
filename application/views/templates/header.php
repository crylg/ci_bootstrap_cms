<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" context="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <meta name="description" content="">

    <title>街头斗地主后台数据</title>

    <link href="<?= base_url('assets/css/bootstrap.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('assets/css/bootstrap-theme.min.css') ?>" rel="stylesheet">
    <link href="<?= base_url('assets/css/fluid-layout.css') ?>" rel="stylesheet">
</head>
<body>
<style>
    .nav-item a {
        color: #FFFFFF;
    }
    .nav-item a:hover,a:active,a:link
    {
        color: #000;
    }
</style>
<nav class="navbar navbar-dark bg-primary">
    <ul class="nav navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="<?=site_url('overriew');?>">概览</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<?=site_url('pay');?>">充值信息</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<?=site_url('room');?>">自由场信息</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="<?=site_url('match');?>">竞技场信息</a>
        </li>
    </ul>
    <script>
        function searchID()
        {
            var id=$("#input_id").val();
            http://127.0.0.1/index.php/player/index/127295

            window.location.href="<?=site_url('player/index/');?>"+"/"+id;
        }
    </script>
    <div class="form-inline pull-xs-right">
        <input style="margin-top: 8px;" class="form-control" id="input_id" type="text" placeholder="用户ID"  onkeyup="value=value.replace(/[^\d]/g,'') "onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
        <a href="javascript:searchID()"><button style="margin-top: 8px;" class="btn  btn-info" type="submit">查看</button></a>
    </div>
</nav>
<div class="container">
    <script>
        var onLoadFunctions=[];//解决重复监听window.onload无法响应问题
        window.onload = function(){
            for(var i=0;i<onLoadFunctions.length;i++)
            {
                var o= onLoadFunctions[i];
               if(o)o();
            }
        }
    </script>