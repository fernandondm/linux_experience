#!/bin/bash

echo "Criando diretorios !"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos !"

groupadd GPR_ADM
groupadd GPR_VEN
groupadd GPR_SEC

echo "Criando usuarios !"

useradd carlos -m -s /bin/bash -p $(openssl passwd -5 123pi00)
useradd maria -m -s /bin/bash -p $(openssl passwd -5 123pi00)
useradd joao -m -s /bin/bash -p $(openssl passwd -5 123pi00)

useradd debora -m -s /bin/bash -p $(openssl passwd -5 123pi00)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -5 123pi00)
useradd roberta -s -s /bin/bash -p $(openssl passwd -5 123pi00)

useradd josefina -m -s /bin/bash -p $(openssl passwd -5 123pi00)
useradd amanda -m -s /bin/bash -p $(openssl passwd -5 123pi00)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -5 123pi00)

echo "Definindo grupos para os usuarios !"

usermod -G GPR_ADM carlos
usermod -G GPR_ADM maria
usermod -G GPR_ADM joao

usermod -G GPR_VEN debora
usermod -G GPR_VEN sebastiana
usermod -G GPR_VEN roberta

usermod -G GPR_SEC josefina
usermod -G GPR_SEC amanda
usermod -G GPR_SEC rogerio

echo "Definindo permissoes !"

chown root:GPR_ADM /adm
chown root:GPR_VEN /ven
chown root:GPR_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM !"
