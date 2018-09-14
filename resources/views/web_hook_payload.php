<?php

$data = json_decode($_POST['payload'])->ref;
$branch = explode("/",$data)[2];

exec("cd ../public_html/blog2 && git pull https://kamkokchin:Emperor3347289^^@github.com/kckam/blog2.git master");
exec("git checkout master");

