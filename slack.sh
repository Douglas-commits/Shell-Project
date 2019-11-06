#!/bin/bash
# Eu sou Tryber e...

#pedindo a mensagem ao usuario
echo "Digite sua mensagem aqui:"
read MENSAGEM

if  [[ -z "$MENSAGEM" ]];
#aviso sobre mensagem vazia
then
    echo "Você não escreveu uma mensagem :("  
    exit 1  

#enviando mensagem
else
    MESSAGE="Essa mensagem veio de um shell script feito por Diego e Douglas. :trybe: "
    curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"$MENSAGEM\n $MESSAGE\"}" https://hooks.slack.com/services/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 > /dev/null 2> /dev/null
    echo -e "Sua mensagem foi enviada! :)"
fi
