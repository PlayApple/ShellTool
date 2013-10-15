
re_file='/Users/liuyanghui/HappyElements/Davinci/artwork/publish/930/动画/盗贼'
filelist=`ls /Users/liuyanghui/HappyElements/Davinci/artwork/publish/930/动画/盗贼`
cp_to_file='/Users/liuyanghui/HappyElements/骨骼打包/output_zip'

for file in $filelist 
do
	echo $re_file/$file/*.zip
	cp -f $re_file/$file/*.zip $cp_to_file
done