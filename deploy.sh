BUILD_DIR="dist"
BRANCH="build"

git checkout -b $BRANCH

tsc || { echo "Erro na compilação"; exit 1; }

rm -rf !($BUILD_DIR)

#cp $BUILD_DIR/* .

#rm -rf $BUILD_DIR

#git add .

#git commit -m "deploy build"

#git push origin $BRANCH --force

#git checkout main

#git reset --hard