--
-- CMS1
--   Transaction Tables
--     pages
--

use cms1;

--
-- ページ（デザイナーが作成したページ）
--
DROP TABLE IF EXISTS `t_pages`;
CREATE TABLE `t_pages` (
    `id` BIGINT NOT NULL AUTO_INCREMENT COMMENT 'ページID',
    `name`      TEXT COMMENT 'ページ名',
    `kana`      TEXT COMMENT 'ページ名カナ',
    `symbol`    TEXT COMMENT 'ページ記号',
    `fullpath`  TEXT COMMENT 'HTML Fullpath',
    `u_ts` TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (id)
) ENGINE=InnoDB COMMENT 'ページ';

-- EOL
