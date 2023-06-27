--
-- CMS1
--   Transaction Tables
--     filelist
--

use cms1;

--
-- ファイルリスト
--
DROP TABLE IF EXISTS `t_filelist`;
CREATE TABLE `t_filelist` (
    `seq`  INT  COMMENT '連番',
    `name` TEXT COMMENT 'フルパス名',
    PRIMARY KEY (seq)
) ENGINE=InnoDB COMMENT 'ファイルリスト';

-- EOL
