#!/bin/bash

echo "Iniciando Script"

echo "Criação dos Diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo " - OK"

echo "Criação dos grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo " - OK"

echo "Criação dos usuários"
useradd carlos \
    --create-home \
    --shell /bin/bash \
    --gid GRP_ADM \
    --password $(openssl passwd senha) 
useradd maria \
    --create-home \
    --shell /bin/bash \
    --gid GRP_ADM \
    --password $(openssl passwd senha) 
useradd joao \
    --create-home \
    --shell /bin/bash \
    --gid GRP_ADM \
    --password $(openssl passwd senha) 

useradd debora \
    --create-home \
    --shell /bin/bash \
    --gid GRP_VEN \
    --password $(openssl passwd senha) 
useradd sebastiana \
    --create-home \
    --shell /bin/bash \
    --gid GRP_VEN \
    --password $(openssl passwd senha) 
useradd roberto \
    --create-home \
    --shell /bin/bash \
    --gid GRP_VEN \
    --password $(openssl passwd senha) 

useradd josefina \
    --create-home \
    --shell /bin/bash \
    --gid GRP_SEC \
    --password $(openssl passwd senha) 
useradd amanda \
    --create-home \
    --shell /bin/bash \
    --gid GRP_SEC \
    --password $(openssl passwd senha) 
useradd rogerio \
    --create-home \
    --shell /bin/bash \
    --gid GRP_SEC \
    --password $(openssl passwd senha) 

passwd --expire carlos
passwd --expire maria
passwd --expire joao

passwd --expire debora
passwd --expire sebastiana
passwd --expire roberto

passwd --expire josefina
passwd --expire amanda
passwd --expire rogerio
echo " - OK"

echo "Configurando Permissões"
chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo " - OK"

echo "Finalizado"
