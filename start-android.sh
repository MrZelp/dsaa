#!/bin/bash

set -e

echo "Запускаем Docker контейнер с Android эмулятором..."

docker run --privileged --rm -d \
  -p 6080:6080 -p 5554:5554 -p 5555:5555 \
  -e DEVICE="Samsung Galaxy S10" \
  -e WEB_VNC=true \
  budtmo/docker-android-x86-11.0

echo "Android эмулятор запускается. Подождите 30-60 секунд."
echo "Как только будет готово, откройте порт 6080 через Codespaces и перейдите по ссылке в браузере."
