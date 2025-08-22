BUILD_DIR="dist"
BRANCH="build"

git checkout $BRANCH

tsc || { echo "Erro na compilação"; exit 1; }

rm -rf .

cp $BUILD_DIR/* .

rm -rf $BUILD_DIR

git add .

git commit -m "deploy build"

git push origin $BRANCH

git checkout main

git reset --hard