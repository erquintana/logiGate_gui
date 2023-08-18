#!/bin/csh

clear
echo "###############################"
banner MISC
echo "###############################"
echo ""
if(!(-e build)) then
    mkdir build
else
    cd build
    rm -rf *
endif
echo ""
echo "############ CMAKE-ING THINGS: ############"
echo ""
cmake -S ../
echo ""
echo ""
echo "############ MAKE ALL: ############"
echo ""
make
cd ..
if($1 == 'run') then
    echo ""
    echo "############ EXCECUTING PROJECT: ############"
    echo ""
    echo "\tcmd: ./bin/physics_simulator_proj"
    ./bin/physics_simulator_proj
endif
echo ""
echo "############ MISC DONE ############"
echo ""
echo ""