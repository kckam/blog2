<?php

$data = json_decode($_POST['payload'])->ref;
$branch = explode("/",$data)[2];

exec("git pull https://kamkokchin:Emperor3347289^^@github.com/kckam/blog2.git ".$branch);
exec("git checkout ".$branch);

