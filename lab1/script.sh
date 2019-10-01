#!/bin/bash
echo "Введите название папок";
read dirname;
echo "Введите количество папок";
read count;
echo "Введите название подпапок";
read subdirpname;
echo "Введите количество подпапок";
read subcount;
echo "Введите название файлов";
read filename;
echo "Введите количество файлов";
read filecount;
echo "Введите адрес папок";
read dirpath;
for (( i = 1; i <= count; i++ )); do
	mkdir $dirpath/$dirname$i;
	for (( j = 1; j <= subcount; j++ )); do
		mkdir $dirpath/$dirname$i/$subdirpname$j;
		for (( k = 1; k <= filecount; k++ )); do
			touch $dirpath/$dirname$i/$subdirpname$j/$filename$k;
		done
	done
done

exit 0;