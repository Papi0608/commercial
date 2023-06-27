--
-- CMS1
--   Transaction Tables
--     release
--

use cms1;

--
-- リリース履歴
--
DROP TABLE IF EXISTS `t_release`;
CREATE TABLE `t_release` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT 'リリース履歴ID',
    `attr`      TEXT COMMENT '属性（product/staging）',
    `u_ts` TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT 'リリース履歴';

-- EOL
