<?php
function chkPasswd($passwd) {
    echo $passwd . ' : ' . password_hash($passwd, PASSWORD_DEFAULT) . "\n";
}

chkPasswd('root66');
chkPasswd('test');
chkPasswd('test');

/*
SELECT `m`.`role`, `m`.`name`, `a`.`login_id`, `a`.`password`
FROM `t_member` `m` INNER JOIN t_auth `a` ON `m`.`aid` = `a`.`aid` \G
*/
