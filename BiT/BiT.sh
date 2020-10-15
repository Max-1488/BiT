#!/bin/bash
# "MaxWice"


#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

trap ctrl_c INT 

function ctrl_c() {
    echo "Saliendo"
 }
 echo 
function limpiar_pantalla {
    clear 
}

echo
function Instalando_dependencias {
    apt install googler && apt install ddgr
    limpiar_pantalla
}
clear
echo -e "\e[0;34m\033[1mMaxWice \n "
sleep 3s
limpiar_pantalla
echo -e "\e[0;33m\033[1mVamos a Instalar las dependencias necesarias para el funcionamiento de la herramienta (Googler-Ddgr)\n "
sleep 10s
limpiar_pantalla
Instalando_dependencias
limpiar_pantalla
echo -e "\e[1;31m[*]Instalando"
sleep 2s

echo -e "\e[0;31m\033[1mHerramienta para buscar informacion  dentro de la terminal\n"
sleep 5s
limpiar_pantalla 
echo 
clear
echo
echo

echo -e "\e[0;31m\033[1m-------------------------------------------------"
echo -e " \e[0;34m\033[1m██████╗ ██╗████████╗                         "
echo -e " \e[0;34m\033[1m██╔══██╗██║╚══██╔══╝                         "
echo -e " \e[0;34m\033[1m██████╔╝██║   ██║                             "
echo -e "\e[0;34m\033[1m ██╔══██╗██║   ██║                             "
echo -e "\e[0;34m\033[1m ██████╔╝██║   ██║                             "
echo -e " \e[0;34m\033[1m╚═════╝ ╚═╝   ╚═                              "
echo -e "\e[0;31m\033[1m-------------- Chako Hernandez-------------------"


#funciones
opciones="ᴅᴜᴄᴋ ɢᴏᴏɢʟᴇʀ ꜱᴀʟɪʀ "

select opcion in $opciones;
do  
    if [ $opcion = "ᴅᴜᴄᴋ" ]; then
    sleep 3s
    limpiar_pantalla
    echo -e "\e[0;34m\033[1m[*]Cargando"
    sleep 3s
        
        echo -e "\e[0;33m\033[1mMotor de busqueda de DUCK\n "
        read -p "Escribe lo que deseas buscar :> " a
        clear
        echo -e "\e[0;34m\033[1mAl finalizar la busqueda presione control c para continuar"
        sleep 2s
        limpiar_pantalla
        echo -e "\e[0;34m\033[1m[*]Cargando"
        ddgr --num 15 $a
        sleep 2s
        echo -e "\e[0;34m\033[1m[*]Cargando"
        sleep 3s
        limpiar_pantalla
        read -p "Coloca la Url para ver dentro de la pagina:> " b
        sleep 3s
        sleep 2s
        echo -e "\e[0;34m\033[1m[*]Cargando"
        limpiar_pantalla
        echo -e "\e[0;34m\033[1m[*]Cargando"
        lynx -dump $b
        sleep 2s
        echo "Busqueda finalizada\n " 
        echo
#Este motor de busqueda es mas complicado de sugerencia utiliza el primero      
        elif [ $opcion = "ɢᴏᴏɢʟᴇʀ " ]; then
        sleep 3s
        limpiar_pantalla
        echo -e "\e[0;34m\033[1m[*]Cargando"
        sleep 3s
            echo -e "\e[0;33m\033[1mMotor de busqueda de Googler\n "

            read -p "Escribe lo que deseas buscar :> " c 
            clear
            echo -e "\e[0;34m\033[1mAl finalizar la busqueda presione control c para continuar"
            sleep 2s
            googler $c
            sleep 2s
            echo -e "\e[0;34m\033[1m[*]Cargando"
            sleep 2s
            limpiar_pantalla
            read -p "Coloca la Url para ver dentro de la pagina:> " d 
            limpiar_pantalla
             echo -e "\e[0;34m\033[1m[*]Cargando"
            lynx -dump $d
            sleep 2s
            echo "Busqueda finalizada\n" 
            sleep 3s
            limpiar_pantalla 
            elif [ $opcion = "ꜱᴀʟɪʀ" ]; then
            limpiar_pantalla
            echo -e "\e[0;34m\033[1m[*]Saliendo del programa"
            sleep 10s
            exit 0
            fi 
        done


        






    

              


