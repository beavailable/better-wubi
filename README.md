# better-wubi
这是一个 86 版五笔输入法的改进版码表，仅含《通用规范汉字表》8105字范围内的字和词语。

# 来源
~~原始码表来源于 win10 1809 ltsc 系统词库`ChsWubi.lex`。~~

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
    - [x] 将`力`字的编码从`ltn`改为`lnt`，二级简码`ln`
    - [x] 将`乃`字的编码从`etn`改为`ent`，二级简码`en`
    - [x] 将`万`字的编码从`dnv`改为`dne`，二级简码`dn`
    - [x] 将`兆`字的编码从`iqv`改为`qii`
    - [ ] 将`瓦`字的编码从`gnyn`改为`gnny`
    - [x] 将`牛`字的编码从`tr`改为`rh`
    - [ ] 将`刀方`等字的末笔识别码从`乙`改为`丿`
    - [x] 将`尤龙`等字的末笔识别码从`乙`改为`丶`
    - [x] 将`戈戋`等字的末笔识别码从`丿`改为`丶`
    - [x] 将带`廴辶囗`的字的末笔识别码改为里面字根的末笔
    - [ ] 将带`犭礻衤足鱼不`的词组编码改为跳过这些字的第二码
- 字根更改：
    - [x] 将`集字右上角`从`Y`键移至`O`键
    - [x] 将`革`下面的字根从`F`键移至`K`键
    - [x] 删除`用`字根
    - [x] 删除`荒`下面的字根，编码改为`k`
    - [x] 删除`戋`字根，编码改为`fxy`
    - [ ] 删除`手`字根
    - [ ] 增加`毛`字头至`E`键

本项目会持续改进，如果还有明显不合理或错误的地方，欢迎提出改进建议。

# 使用
## fcitx5
```shell
git clone https://github.com/beavailable/better-wubi.git
cd better-wubi
sudo ./install-for-fcitx5.sh
```
之后重启 fcitx5 并添加“better-wubi”输入法即可。

# 版权
版权归王码公司所有，禁止商用。
