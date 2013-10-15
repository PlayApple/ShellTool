filelist=`ls ./output_zip/`

echo "------------------------ clean tem & output_plist data ...-----------------------------"
rm -rf tem/*
rm -rf output_plist/*


for file in $filelist 
do 
	echo "------------------------start unzip ...-----------------------------"
	echo $file
	unzip ./output_zip/$file -d tem/$file
	
	name=`echo $file|awk -F'_output.zip' '{print $1}'`
	
	cp -fp ./tem/$file/skeleton.xml ./output_plist/$name.xml
	
	echo "------------------------start texturepaker export ...-----------------------------"	
	spritesDir=./tem/$file/texture
	outdir=./output_plist/$name
	
	TexturePacker --format cocos2d --opt RGBA8888 --data $outdir.plist --sheet $outdir.png --dither-fs-alpha $spritesDir/*.png
done

echo "------------------------ success ! ...-----------------------------"


#如果没有TexturePacker命令，执行下面命令添加
#sudo ln -s /Applications/TexturePacker.app/Contents/MacOS/TexturePacker /usr/local/bin/TexturePacker