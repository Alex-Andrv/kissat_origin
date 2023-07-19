#!/bin/bash

# Указываем каталог, в котором нужно выполнить команду
directory="./benches"

# Указываем команду, которую нужно выполнить для каждого файла
command="./build/kissat"

# Перебираем все файлы в каталоге
for file in "$directory"/*; do
    # Проверяем, является ли текущий элемент файлом
    if [ -f "$file" ]; then
        # Выполняем команду для каждого файла
        $command "--quiet" "$file"
        echo "done $file"
    fi
done