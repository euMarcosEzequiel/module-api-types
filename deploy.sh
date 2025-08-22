#!/bin/bash

# Variáveis
BUILD_DIR="dist"
BRANCH="build"
MESSAGE="Deploy build"

# Compila o projeto (ajuste se necessário)
echo "Compilando o projeto..."
tsc || { echo "Erro na compilação"; exit 1; }

# Vai para a branch gh-pages (cria se não existir)
echo "Criando branch temporária $BRANCH..."
git checkout --orphan $BRANCH

# Remove todos os arquivos da árvore de trabalho (não mexe no .git)
git rm -rf . > /dev/null 2>&1

# Copia os arquivos do build para a raiz
echo "Copiando arquivos do build..."
cp -r ../$BUILD_DIR/* .

# Adiciona todos os arquivos do build
git add .

# Faz commit
git commit -m "$MESSAGE"

git remote add origin git@github.com:euMarcosEzequiel/module-api-types.git

git push origin $BRANCH --force

git checkout main

git branch -d $BRANCH

git reset --hard

echo "Deploy feito com sucesso!"