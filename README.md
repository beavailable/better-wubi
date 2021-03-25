# better-wubi
这是一个 86 版五笔输入法的改进版码表。

# 来源
原始码表来源于 win10 1809 ltsc 系统词库`ChsWubi.lex`。

# 更改
在原始码表的基础上，我做了如下更改（尚未完成）：
- 编码更改：
    - [x] 将`力`字的编码从`ltn`改为`lnt`，二级简码`ln`
    - [x] 将`乃`字的编码从`etn`改为`ent`，二级简码`en`
    - [x] 将`万`字的编码从`dnv`改为`dne`，二级简码`dn`
    - [x] 将`兆`字的编码从`iqv`改为`qii`
    - [ ] 将`瓦`字的编码从`gnyn`改为`gnny`
    - [ ] 将`方`字的编码从`yygn`改为`yygt`
    - [x] 将`牛`字根的编码从`tr`改为`rh`
    - [ ] 将`刀`字根的末笔识别码从`乙`改为`丿`
    - [x] 将`戈戋`字根的末笔识别码从`丿`改为`丶`
    - [x] 将带`廴辶囗`的字的末笔识别码改为里面字根的末笔
    - [ ] 将带`犭礻衤足鱼不`的词组编码改为跳过这些字的第二码
- 字根更改：
    - [x] 将`集字右上角`从`Y`键移至`O`键
    - [x] 删除`用`字根
    - [x] 删除`革`下面的字根
    - [x] 删除`荒`下面的字根
    - [ ] 删除`犬`及其左上部分的字根
    - [x] 删除`戋`字根，编码改为`fxy`

本项目会持续改进，如果还有明显不合理或错误的地方，欢迎提出改进建议。

# 统计
`statistics.sh`脚本统计的是键盘上各键的使用频率，其中对于有简码的汉字已经去掉了全码。

原始码表：
```
单字（以千为单位）：
---------------------------------------------------------------------------------
| Q-1.2 | W-1.1 | E-0.7 | R-0.7 | T-1.3 | Y-1.4 | U-1.0 | I-0.9 | O-0.4 | P-0.6 |
---------------------------------------------------------------------------------
 | A-1.0 | S-0.6 | D-1.1 | F-1.4 | G-1.6 | H-1.1 | J-1.0 | K-1.1 | L-0.6 |
 -------------------------------------------------------------------------
   | Z     | X-0.5 | C-0.6 | V-0.6 | B-0.6 | N-1.2 | M-0.8 |
   ---------------------------------------------------------
左边总计：12831，右边总计：10147，比例为 56%:44%

词组（以万为单位）：
---------------------------------------------------------------------------------
| Q-1.3 | W-1.6 | E-0.7 | R-1.2 | T-1.9 | Y-1.6 | U-1.3 | I-1.2 | O-0.4 | P-1.0 |
---------------------------------------------------------------------------------
 | A-1.1 | S-0.9 | D-1.3 | F-1.6 | G-1.9 | H-1.0 | J-0.9 | K-1.0 | L-0.7 |
 -------------------------------------------------------------------------
   | Z     | X-0.7 | C-0.7 | V-0.7 | B-0.8 | N-1.2 | M-0.9 |
   ---------------------------------------------------------
左边总计：165021，右边总计：111850，比例为 60%:40%
```
本码表：
```
单字（以千为单位）：
---------------------------------------------------------------------------------
| Q-1.1 | W-1.0 | E-0.7 | R-0.7 | T-1.2 | Y-1.2 | U-0.9 | I-0.8 | O-0.4 | P-0.6 |
---------------------------------------------------------------------------------
 | A-1.0 | S-0.6 | D-1.0 | F-1.2 | G-1.3 | H-0.9 | J-0.9 | K-1.1 | L-0.5 |
 -------------------------------------------------------------------------
   | Z     | X-0.5 | C-0.6 | V-0.6 | B-0.5 | N-1.1 | M-0.7 |
   ---------------------------------------------------------
左边总计：11966，右边总计：9275，比例为 56%:44%

词组（以万为单位）：
---------------------------------------------------------------------------------
| Q-1.3 | W-1.6 | E-0.7 | R-1.2 | T-1.8 | Y-1.6 | U-1.3 | I-1.2 | O-0.5 | P-1.0 |
---------------------------------------------------------------------------------
 | A-1.1 | S-0.9 | D-1.3 | F-1.7 | G-1.8 | H-1.0 | J-0.9 | K-1.0 | L-0.7 |
 -------------------------------------------------------------------------
   | Z     | X-0.7 | C-0.7 | V-0.7 | B-0.8 | N-1.2 | M-0.9 |
   ---------------------------------------------------------
左边总计：164562，右边总计：112390，比例为 59%:41%
```

# 使用
## fcitx5
```shell
git clone https://github.com/beavailable/better-wubi.git
cd better-wubi
sudo ./install-for-fcitx5.sh
```
之后重启 fcitx5 并添加“better-wubi”输入法即可。

# 版权
版权归微软公司所有，禁止商用。
