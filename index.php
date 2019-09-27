<?php
    $redis = new Redis();
    $redis->connect('redis');
    $redis->incr('counter');
?>

<h3>Hello <?= getenv('NAME') ?>!</h3>
<b>Hostname:</b> <?= getenv('HOSTNAME') ?><br/>
<b>Visits:</b> <?= $redis->get('counter') ?>

