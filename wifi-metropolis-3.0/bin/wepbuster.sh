#! /bin/bash
echo
echo "                           Lanzador de Wepbuster" 
echo "                                   por" 
echo "                         >> Maese Kamara (m.k.) <<"
echo "                                  para"
echo "                            >> elhacker.net <<"
echo 
echo
echo "  Opciones:"
echo "                        [channel(s)]"
echo "                        [sort | connect] [hostname/ipaddress]"
echo "                        permute [OPTIONS]"
echo "                        [--man] (para leer el manual de uso de Wepbuster)"
echo
echo "  Seleccion de Canales:"
echo "                        -Un solo canal 7"
echo "                        -Multiples canales 2 5 7 11 14"
echo "                         (Separados por espacios)" 
echo "                        -Si no seleccionas ningun canal "
echo "                         se hara el ataque a todos 1-14 "
echo 
echo   "Introduce las opciones para lanzar"
echo   "WepBuster separadas por espacios"
echo
read opciones
echo 
echo Has seleccionado : $opciones
echo 
set -- ${opciones}
echo 
echo
echo              Iniciando WepBuster
echo
echo
cd /opt/
cd wepbuster-1.0_beta
perl wepbuster $opciones

echo #END