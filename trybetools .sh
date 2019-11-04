#!/bin/bash

echo -e "Olá, eu sou o TrybeTools! \nVamos abrir todas as ferramentas necessárias para sua aula de hoje."
sleep 1
echo -e "Abrindo programas:"

#abrindo páginas no navegador
if which xdg-open > /dev/null &
then
  #xdg-open 'http://www.betrybe.com'
  google-chrome --disable-gpu --disable-software-rasterizer 'http://course.betrybe.com/' > /dev/null 2> /dev/null &
  echo "► Trybe Academy aberto"
    sleep 1
  google-chrome --disable-gpu --disable-software-rasterizer 'http://gmail.com/' > /dev/null 2> /dev/null &
  echo "► Gmail aberto"  
else
  echo "Não conseguimos identificar um navegador na maquina :("
fi

#abrindo programas
zoom > /dev/null 2> /dev/null &
echo "► Zoom aberto"
sleep 4
slack > /dev/null 2> /dev/null &
echo "► Slack aberto" 
sleep 4
x-terminal-emulator > /dev/null 2> /dev/null &
echo "► Terminal aberto" 
sleep 4
code .. > /dev/null 2> /dev/null &
echo "► VScode aberto" 
sleep 3
echo "Boa aula, Tryber! :)"