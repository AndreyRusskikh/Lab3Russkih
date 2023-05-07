@echo off
chcp 65001

echo Эта программа удаляет заданные директории.
echo Введите список директорий для удаления, разделенных пробелами:
set /p dir_list=

echo Подтвердите "%dir_list%":

echo Подтвердите удаление директории "%dir_list%" (Y/N):
set /p confirm=
if /i "%confirm%"=="Y" (
    attrib -r -h -s "%dir_list%\*" /s /d
    rd /s /q "%dir_list%" || (
        echo Не удалось удалить директорию "%dir_list%". & exit /b 1
    )
    echo Директория "%dir_list%" удалена успешно.
) else (
    echo Отмена удаления директории "%dir_list%".
)

pause
