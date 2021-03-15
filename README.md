# better-wubi
这是一个新世纪五笔输入法的码表，仅含《通用规范汉字表》8105字范围内的字和词语。


本项目旨在打造一个更好的、面向大众的通用码表，并且会持续更新，逐步完善词库。

# 来源
原始码表来源于[CNMan/rime-data](https://github.com/CNMan/rime-data)，感谢[CNMan](https://github.com/CNMan)为此所做的工作。

以下是原始码表介绍：
- 仅含《通用规范汉字表》8105字范围内的字和词语。
- 修正、统一了王码大一统新世纪版五笔字型错误编码
- 以大陆商务印书馆《现代汉语词典》（第7版）（约5.9万词）、上海辞书出版社《现代汉语大词典》（约10万词）及《现代汉语新词语词典》（第2版）（约1万词）和台湾教育部《重編國語辭典修訂本》（约15.1万词）、《成語典》（约0.75万词）（以下简称“五词典”）为基准
- 完整包括《现代汉语词典》（第7版）、《现代汉语大词典》、《现代汉语新词语词典》（第2版）词头
- 整合了9种五笔码表（王码大一统、QQ五笔、极点五笔、孤狐世纪词库、至善词库、冰凌五笔、黄狗五笔、精灵五笔、花儿五笔）的公共词语
- 原则上不含5字以上词语（“五词典”词头除外）
- 原则上不含外国人名、地名、品牌名等（“五词典”词头除外）
- 完整包括民政部县以上行政区划简称（即只有“北京”，没有“北京市”等），并清理了地域词（即没有“北京动物园”等）
- 完整包括教育部76所直属大学名称
- 完整包括各届中国大陆及港澳台地区领导人姓名，其他国内人名仅含“五词典”词头中的历史人物姓名
- 词语总数拟控制在15万左右，其中“五词典”以外词语总数约1.5万
- 旨在打造整体偏“学术”的字词码表，欢迎大家提出意见和建议，谢谢！

# 更改
在原始码表的基础上，我做了如下更改（尚未完成）：
- 编码更改：
    - [x] 将`为`字的编码从`ytny`改为`yeyi`
    - [x] 将`丑`字的编码从`nhfd`改为`nfd`
    - [ ] 将`求`字的编码从`giyi`改为`fiyi`
- 字根更改：
    - [ ] 将`几`从`W`键移至`M`键
    - [ ] 将`广`从`O`键移至`Y`键
    - [ ] 将`集字右上角`从`Y`键移至`O`键
    - [ ] 增加`高字头`至`Y`键
    - [ ] 增加`六`至`U`键
    - [ ] 增加`兴字头`至`I`键
    - [ ] 增加`马`至`C`键

本项目会持续改进，如果还有明显不合理或错误的地方，欢迎提出改进建议。

# 统计
`statistics.sh`脚本统计的是码表中的单字对键盘上各键的使用频率，其中对于有简码的汉字已经去掉了全码。

原始码表：
```
-------------------------------------------------------------------------------------------
| Q.1253 | W.1379 | E.971  | R.832  | T.1436 | Y.1556 | U.1026 | I.994  | O.595  | P.724  |
-------------------------------------------------------------------------------------------
 | A.1180 | S.747  | D.1200 | F.1557 | G.2050 | H.1263 | J.1078 | K.1353 | L.546  |
 ----------------------------------------------------------------------------------
   | Z      | X.551  | C.730  | V.617  | B.603  | N.1327  | M.802  |
   -----------------------------------------------------------------
```
本码表：
```
-------------------------------------------------------------------------------------------
| Q.1255 | W.1384 | E.977  | R.835  | T.1437 | Y.1564 | U.1028 | I.998  | O.597  | P.726  |
-------------------------------------------------------------------------------------------
 | A.1184 | S.748  | D.1204 | F.1562 | G.2063 | H.1257 | J.1079 | K.1357 | L.547  |
 ----------------------------------------------------------------------------------
   | Z      | X.553  | C.735  | V.620  | B.606  | N.1331 | M.804  |
   ----------------------------------------------------------------
```

# 使用
## fcitx5
```shell
git clone https://github.com/beavailable/better-wubi.git
cd better-wubi
sudo ./install-for-fcitx5.sh
```
之后重启 fcitx5 并添加“新世纪五笔”输入法即可。

# 教程
王码五笔字形辅助教材节选：[CNMan/UnicodeCJK-WuBi06/issues/15](https://github.com/CNMan/UnicodeCJK-WuBi06/issues/15)

# 版权
版权归王码公司所有。
