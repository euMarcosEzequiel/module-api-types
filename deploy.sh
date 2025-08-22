BUILD_DIR="dist"
BRANCH="build"

git checkout -b $BRANCH

tsc || { echo "Erro na compilação"; exit 1; }

git rm -rf .

cp $BUILD_DIR/* .

#echo "Copiando arquivos do build..."
#cp -r ../$BUILD_DIR/* .

# Adiciona todos os arquivos do build
#git add .

# Faz commit
#git commit -m "deploy build"

#git remote add origin git@github.com:euMarcosEzequiel/module-api-types.git

#git push origin $BRANCH --force

#git checkout main

#git branch -d $BRANCH

#git reset --hard

#echo "Deploy feito com sucesso!"