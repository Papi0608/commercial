--
-- CMS1
--   Transaction Tables
--     Similar
--

use cms1;

--
-- 類似物件（近場で有効面積が近いもの）
--   近場で有効面積が近いもの
--   近場は緯度経度で比較するが、まるめた値を用いる。
--   面積の比較は80～120％のものを対象とする。
--
DROP TABLE IF EXISTS `t_similar`;
CREATE TABLE `t_similar` (
    `bldg_code` VARCHAR(20) COMMENT 'ビルコード',
    `net_area`  FLOAT COMMENT '有効面積',
    `longitude` FLOAT COMMENT '緯度',
    `latitude`  FLOAT COMMENT '経度',
    `near`      TEXT  COMMENT '近いビルコードJSON',
    PRIMARY KEY (bldg_code)
) ENGINE=InnoDB COMMENT '類似物件';

-- EOL
