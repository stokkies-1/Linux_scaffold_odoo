#!/bin/bash

# criado por Fabio de Campos Bordin 7/07/2017

scaffold_default(){

   echo  "SCAFFOLD_DEFAULT"

   echo -ne "Insira o path do novo diretorio de modelos- DEFAULT: " 

   read folder

   'mkdir' $folder

   

    echo -ne "Insira o nome do modulo- DEFAULT: "
    read modulo

    "./odoo-bin" scaffold -t default $modulo $folder


   menu

}

 

scaffold_theme(){

   echo  "SCAFFOLD_DEFAULT"

   echo -ne "Insira o path do novo diretorio de modelos- THEME:"

   read folder

   'mkdir' $folder

   'cd'    $folder

    echo -ne "Insira o nome do modulo- THEME: "
    read modulo

    "./odoo-bin" scaffold -t theme $modulo $folder


   menu


}

 

install_docker(){

   echo  "Instalando Docker"

   sudo apt-get update

   sudo apt-get install docker.io

   echo  "OK Docker Instalado"

    

   menu

}

 

install_voodoo(){

   echo  "Instalando Voodoo"

   sudo apt-get update

   

   sudo pip install git+https://github.com/akretion/voodoo.git --upgrade

 

   echo  "OK Voodoo Instalado"

   

   menu

}

menu(){

   echo "#==================================================#"

   echo "# Script Infra Odoo                                #"

   echo "# 1) Criar Modulo scaffold_default                 #"

   echo "# 2) Criar Modulo scaffold_Theme                   #"

   echo "# 3) instalar Docker                               #"

   echo "# 4) instalar Voodoo                               #"

   echo "# 5) Sair                                          #"

   echo "#==================================================#"

   echo -ne "Opcao: "

   read opcao

     case $opcao in

     1) scaffold_default

        ;;

     2) scaffold_theme

        ;;

     3) install_docker

        ;;

     4) install_voodoo

        ;;

     5) echo "Saindo"

        sleep 3

        exit

        ;;

     *) clear;echo "Opcao invalida"

        menu

        ;;

     esac

}

menu
