#!/bin/bash

# Получаем путь к директории, где находится скрипт
BASE_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# Определяем директории
BASH_COMAND_DIR="$BASE_DIR/bash_comand"
BUG_REPORT_DIR="$BASE_DIR/bug_report"
CLIENT_SERVER_DIR="$BASE_DIR/client_server"
SQL_DIR="$BASE_DIR/sql"
CHARLES_DIR="$BASE_DIR/charles"
POSTMAN_DIR="$BASE_DIR/postman"
TEST_CASES_DIR="$BASE_DIR/test_cases"

# Проверка существования папок
for dir in "$BASH_COMAND_DIR" "$BUG_REPORT_DIR" "$CLIENT_SERVER_DIR" "$SQL_DIR" "$CHARLES_DIR" "$POSTMAN_DIR" "$TEST_CASES_DIR"; do
    if [ -d "$dir" ]; then
        echo "Папка $(basename "$dir") найдена."
    else
        echo "Папка $(basename "$dir") не найдена."
    fi
done
