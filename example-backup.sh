if [ -e /mnt/backup/lundi.db ]; then
       echo "file found!"

else
       echo "Téléchargement de la base..."
       curl -s http://192.168.1.1:8080/backupdatabase.php > /mnt/backup/lundi.db

fi 
find mnt/backup/lundi.db -mtime +7 rm {} \;

exit



