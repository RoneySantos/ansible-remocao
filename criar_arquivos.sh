# #/bin/bash

data_atual=$(date "+%Y%m%d")

echo "Digite quantos arquivos serao criados "
read quantidade_arquivos
echo "A quantidade de arquivos criada sera de ${quantidade_arquivos}!"

x=1
while [ $x -le $quantidade_arquivos ]; do
      echo "Arquivo ${x} Esta sendo criado !";
      echo "A data de hoje e ${data_atual}"
      touch -d $data_atual arquivo_${data_atual}.txt
      data_atual=`date +%Y%m%d --date="$dataatual $x day ago"`
      x=$(($x + 1))
      sleep 1
done

# Criando variavel de data atual
#data_atual=$(date "+%Y%m%d")
# ## comando para criar em data especifica
# ## touch -d 20120101 goldenfile
# ## mostra data atual no padrao americano date "+%Y%m%d"
# ## date -d 'now - 2 days'
# ## date "+%Y%m%d" -d 'now - 1 days'
#data_atual=`date +%Y%m%d -d 'now - $x days'`
##
#date --date="$_ano-$_mes-$_dia $_HORA $_NOVA_DATA day"

# #!/bin/sh
 
# clear
# echo Informe uma data. Ex. 31/01/2013
# read _DATA
# echo
 
# echo Informe o horario. Ex. 15:25:30
# read _HORA
# echo
 
# _dia=`echo $_DATA | cut -d'/' -f1`
# _mes=`echo $_DATA | cut -d'/' -f2`
# _ano=`echo $_DATA | cut -d'/' -f3`
 
# echo "Informe quantos DIAS para adicionar (+20) ou reduzir (-25)"
# read _NOVA_DATA
# echo
 
# if [ $_NOVA_DATA -lt 0 ]; then
#         _NOVA_DATA=`echo $_NOVA_DATA | tr "-" " "`
#         date --date="$_ano-$_mes-$_dia $_HORA $_NOVA_DATA day ago"
# else
#         _NOVA_DATA=`echo $_NOVA_DATA | tr "+" " "`
#         date --date="$_ano-$_mes-$_dia $_HORA $_NOVA_DATA day"