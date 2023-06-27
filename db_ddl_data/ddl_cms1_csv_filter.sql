--
-- CMS1
--   CSV filter Tables
--

use cms1;

--
-- ビル用CSVフィルタ
--
DROP TABLE IF EXISTS `m_bldg_csv_filter`;
CREATE TABLE IF NOT EXISTS `m_bldg_csv_filter` (
    `id`           INT  NOT NULL COMMENT 'ビル用CSVフィルタID',
    `excel_column` TEXT NOT NULL COMMENT 'Excelカラム名 A,B,C,...,FZ,GA',
    `physical`     TEXT NOT NULL COMMENT '物理名称',
    `logical`      TEXT NOT NULL COMMENT '論理名称',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB COMMENT 'ビル用CSVフィルタ';

-- EOL
