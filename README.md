# better-wubi
这是一个 86 版五笔输入法的改进版码表，仅含《通用规范汉字表》8105字范围内的字和词语。

本项目旨在打造一个更好的、面向大众的通用码表，并且会持续更新，逐步完善词库。

《通用规范汉字表》之外的新增汉字：
```
adwd 碁
cccu 叒
damw 磺
efqn 朊
nkmh 屌
npwi 屄
yctd 诶
```

## 有何改进
本码表相对原版做了很多改进（[详情点这里](https://github.com/beavailable/better-wubi#%E6%9B%B4%E6%94%B9)），目标是做到：
- 更合理的拆字
- 更均衡的按键
- 更少的重码
- 更易学易用

需要注意的是，由于五笔字根的设计限制，一些问题是没办法完全解决的，我只能尽量改善设计，减少这些问题对用户体验造成的影响。

## 关于新世纪版
之前这个项目是基于新世纪五笔的改进版，但是用了一段时间后我觉得新世纪版并不好用，其缺点如下：
- 整体采用小字根设计，拆字繁琐（主要指体验）
- 由于小字根设计，重码也变多了，尤其是常用字词
- 号称编码更规范合理，但依然存在诸多不合理及错误编码（网上可以找到很多例子）
- 网传其改进了各手指使用的均衡度，但根据实测及程序分析，其相对于 86 版几乎没有改变

由于以上问题的存在，如果我基于新世纪版进行改进，就需要大量的改动及重新设计，工作量之大几乎相当于重新设计一套编码方案了，这就是我放弃新世纪版的原因。

不过平心而论，新世纪版也有一些优点，比如字根设计及拆字方案总体上确实更加合理了，对于新手来说也更易学易用了，本项目对 86 版五笔的一些改进也参考了新世纪版的设计。

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
在原始码表的基础上，我做了如下更改：
- 简码更改：
    - [x] 将`Q`键上的一级简码从`我`改为`你`
    - [x] 将`E`键上的一级简码从`有`改为`我`
    - [x] 将`Y`键上的一级简码从`主`改为`请`
    - [x] 将`U`键上的一级简码从`产`改为`单`
    - [x] 将`A`键上的一级简码从`工`改为`有`
    - [x] 将`F`键上的一级简码从`地`改为`才`
    - [x] 将`X`键上的一级简码从`经`改为`给`
    - [x] 将`N`键上的一级简码从`民`改为`已`，键名汉字改为`己`
    - [x] 将`M`键上的一级简码从`同`改为`由`
- 编码更改：
    - [x] 将`力`字的编码从`ltn`改为`lnt`，二级简码`ln`
    - [x] 将`乃`字的编码从`etn`改为`ent`，二级简码`en`
    - [x] 将`万`字的编码从`dnv`改为`dne`，二级简码`dn`
    - [x] 将`兆`字的编码从`iqv`改为`qii`
    - [x] 将`式`字的编码从`aad`改为`aai`
    - [x] 将`非`字的编码从`djdd`改为`jddd`
    - [x] 将`瓦`字的编码从`gnyn`改为`gnny`
    - [x] 将`官`字的编码从`pnhn`改为`phnn`
    - [x] 将`予`字的编码从`cbj`改为`cnhj`
    - [x] 将`特`字的编码从`trff`改为`rhff`
    - [x] 将`囊`字的编码从`gkhe`改为`fkpe`
    - [x] 将`养`字的编码从`udyj`改为`udwj`
    - [x] 将`我`字的编码从`trnt`改为`trxy`
    - [x] 将`刀方`等字的末笔识别码从`乙`改为`丿`
    - [x] 将`尤龙`等字的末笔识别码从`乙`改为`丶`
    - [x] 将`戈戋`等字的末笔识别码从`丿`改为`丶`
    - [x] 将带`廴辶囗`的字的末笔识别码改为里面字根的末笔
    - [x] 将`还`字的编码改为跳过第二码，即`gpi`，二级简码`gp`
- 字根更改：
    - [x] 将`W`键上的`癸`字头移至`O`键
    - [x] 将`Y`键上的`隹`右边的字根移至`O`键
    - [x] 将`Y`键上的`方`字根移至`O`键
    - [x] 将`D`键上的`套`下面的字根移至`K`键
    - [x] 将`F`键上的`革`下面的字根移至`K`键
    - [x] 将`F`键上的`雨`字根移至`K`键
    - [x] 将`N`键上的`⺗`字根移至`I`键
    - [x] 删除`Q`键上的`荒`下面的字根，编码改为`k`
    - [x] 删除`Q`键上的类`犭`字根
    - [x] 删除`Q`键上的`鱼`字头
    - [x] 删除`E`键上的`用`字根，编码改为`eh`
    - [x] 删除`U`键上的`辛`字根，编码改为`uf`
    - [x] 删除`G`键上的`戋`字根，编码改为`fxy`
    - [x] 增加`犭`字根至`E`键
    - [x] 增加`告`字头至`R`键
    - [x] 增加`鱼`字根至`P`键
    - [x] 增加`于`字根至`S`键
    - [x] 增加`者`字头至`F`键
    - [x] 增加`足`字根至`L`键

本项目会持续改进，如果还有明显不合理或错误的地方，欢迎提出改进建议。

# 使用
本项目只是一个码表，理论上可用于任何支持自定义码表的输入法。

## Win10
首先[下载码表](https://raw.githubusercontent.com/beavailable/better-wubi/main/better-wubi.dict)，然后使用[wubiLex](https://github.com/aardio/wubi-lex)将码表安装到系统里。

注意：由于`wubiLex`只接受特定扩展名的码表文件，你可能需要将码表重命名为`better-wubi.txt`才能添加。

## Debian & Ubuntu

### fcitx
```shell
# requires
# fcitx: sudo apt install fcitx fcitx-table-wubi fcitx-tools
# fcitx5: sudo apt install fcitx5 fcitx5-chinese-addons libime-bin
git clone --depth=1 https://github.com/beavailable/better-wubi.git
cd better-wubi
./install-for-fcitx.sh
```
然后在`fcitx`设置面板添加`better-wubi`输入法即可。

# 转换
`convert.py`脚本可以将码表转换为你需要的格式。

# 统计
`statistics.py`脚本可以查看相关的统计信息。

提示：词库不同、统计方法不同可能会导致结果不同，此数据仅供参考！

# 版权
版权归王码公司所有，禁止商用。
