#!/bin/bash
# 批量导出FNT
# 如果添加字体，请在fontSizeList.txt添加。
# 如果添加文字，请打开ui_white_text_format，添加文字。脚本添加中文会出现无法识别，所以需要手工添加
# Yanghui.Liu
# www.cocos2dev.com
#
 
while read fontSize
do
    GDCL ui_white_text_format.GlyphProject ./output/ui_white_text_$fontSize -fs $fontSize -v 
done < fontSizeList.txt

echo "Success! All .fnt files in the output file."
