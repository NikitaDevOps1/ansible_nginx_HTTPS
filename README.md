## Описание

Этот проект предназначен для установки и настройки Nginx с поддержкой HTTPS на удаленном хосте. Мы используем SSL-сертификат для обеспечения безопасного соединения.

### !ВАЖНО! 
        В плейбуке есть таска для исключения в SElinux каталога /etc/nginx/ssl/
        Это необходимо для правильной работы HTTPS на Red Hat и его производных системах.
### !ВАЖНО!

## Основные задачи Ansible

Проект выполняет следующие задачи с помощью Ansible:

- Установка Nginx.
- Удаление стандартной директории HTML.
- Настройка конфигурации Nginx.
- Копирование SSL-сертификата и ключа.
- Установка индексного HTML-файла.
- Перезапуск Nginx после изменений.


В проекте также присутствует скрипт для генерации SSL-сертификата ssl/gen_ssl.sh, он должен запуститься первым
Далее запускаем скрипт auto_ansible.sh, для того что бы не писать руками:)

### Порядок выполнения:
1) На удаленной машине в файле /etc/hosts добавляем 127.0.0.1 и любое имя, его нужно запомнить для заполнения Common Name в сертификате
2) Далее вызываем на локальной машине:
./ssl/gen_ssl.sh - Вводим все данные, кроме Email, Challenge password и Optional Company name - они не обязательны, 
3) Потом ./auto_ansible.sh
4) При отсутствии ошибок проверяем в браузере https://<IP>
### Примечание

Убедитесь, что у вас есть права администратора для выполнения установки и настройки.