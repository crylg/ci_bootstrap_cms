<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" context="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <meta name="description" content="">

    <title><?=$title?$title:'街头斗地主后台数据';?></title>

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
            <a class="nav-link" href="javascript:void(0)"><?=$title;?></a>
        </li>
     </ul>
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