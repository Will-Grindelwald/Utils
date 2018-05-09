find $path -name *.md -exec ./operation.sh {} \;
find article/ -name "*.md" -exec cp {} $1/source/_posts \;