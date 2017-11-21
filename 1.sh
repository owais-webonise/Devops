while :
do
echo "1. Backup"
echo "2. Restore"
read ch
echo "Enter Username"
read name
echo "Enter database name"
read datab


case $ch in
 
1)
echo "Enter backup file name"
read backup
mysqldump -u $name -p $datab > $backup
;;

2)

echo "Enter file path where sql dump is stored"
read restore
mysql -u $name -p $datab < $restore
;;
esac
done 
