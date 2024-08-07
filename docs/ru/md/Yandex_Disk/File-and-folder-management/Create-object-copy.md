﻿---
sidebar_position: 5
---

# Создать копию объекта
 Создает копию объекта по заданному пути и пути к оригиналу



`Функция СоздатьКопиюОбъекта(Знач Токен, Знач Оригинал, Знач Путь, Знач Перезаписывать = Ложь) Экспорт`

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Токен | --token | Строка | Токен |
  | Оригинал | --from | Строка | Путь к оригинальному файлу или каталогу |
  | Путь | --to | Строка | Путь назначения для копии |
  | Перезаписывать | --rewrite | Булево | Перезаписывать если файл с таким именем уже существует |

  
  Возвращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Yandex

<br/>




```bsl title="Пример кода"
  
  Токен     = "y0_AgAAAABdylaOAA...";
  Оригинал  = "/Альпака.png";
  Путь      = "/Альпака (копия).png";
  
  Ответ = OPI_YandexDisk.СоздатьКопиюОбъекта(Токен, Оригинал, Путь); //Соответствие
  Ответ = OPI_Инструменты.JSONСтрокой(Ответ);                        //Строка
```
	


```sh title="Пример команды CLI"
    
  oint yadisk СоздатьКопиюОбъекта --token "y0_AgAAAABdylaOAA..." --from "/Альпака.png" --to "/Альпака (копия).png" --rewrite %rewrite%

```

```json title="Результат"
{
  "md5": "8d7bf7d7ee61113f9044f3a28496e458",
  "sha256": "f7607461b40164d5064d1d5085cbe1e94ecb1326e7ff8db857931b2ccd14b7f8",
  "revision": 1707469147481281,
  "media_type": "image",
  "file": "https://downloader.disk.yandex.ru/disk/42396f94cb31c4bee977b94c0eaab5feba796297f50f7db2f9562a339c0651ee/65c6219c/gwThwhLBKYvLhQCNnqAHildyZs8NXNIgEfk0D4t03wR34GkBTG2Ij-0FzXGoNbALdlrssshQrGMpyJBpokoyOw%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0%20%28%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F%29.png&disposition=attachment&hash=&limit=0&content_type=multipart&owner_uid=1573541518&fsize=440431&hid=0e9b208e1aea0dbd58b4b43ccdc3ad5a&media_type=image&tknv=v2&etag=8d7bf7d7ee61113f9044f3a28496e458",
  "modified": "2024-02-09T08:59:07+00:00",
  "sizes": [
  {
  "name": "ORIGINAL",
  "url": "https://downloader.disk.yandex.ru/disk/42396f94cb31c4bee977b94c0eaab5feba796297f50f7db2f9562a339c0651ee/65c6219c/gwThwhLBKYvLhQCNnqAHildyZs8NXNIgEfk0D4t03wR34GkBTG2Ij-0FzXGoNbALdlrssshQrGMpyJBpokoyOw%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0%20%28%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F%29.png&disposition=attachment&hash=&limit=0&content_type=multipart&owner_uid=1573541518&fsize=440431&hid=0e9b208e1aea0dbd58b4b43ccdc3ad5a&media_type=image&tknv=v2&etag=8d7bf7d7ee61113f9044f3a28496e458"
  },
  {
  "name": "DEFAULT",
  "url": "https://downloader.disk.yandex.ru/preview/814293809e2e0775d04497a5b6c833b8f6c290816f3955eefa531409d18c55d8/inf/ZWOpbA1ecNxReAZlEDZe9iiWCPOJvrRoOl9Cq1Z-fLjQhsztUkb2q2NfXTaGx05Kc5h2Uo5V6MOYf--FqAAxIQ%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0%20%28%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F%29.png&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=1573541518&tknv=v2"
  },
  {
  "name": "XXXS",
  "url": "https://downloader.disk.yandex.ru/preview/814293809e2e0775d04497a5b6c833b8f6c290816f3955eefa531409d18c55d8/inf/ZWOpbA1ecNxReAZlEDZe9iiWCPOJvrRoOl9Cq1Z-fLjQhsztUkb2q2NfXTaGx05Kc5h2Uo5V6MOYf--FqAAxIQ%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0%20%28%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F%29.png&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=1573541518&tknv=v2&size=XXXS&crop=0"
  },
  {
  "name": "XXS",
  "url": "https://downloader.disk.yandex.ru/preview/814293809e2e0775d04497a5b6c833b8f6c290816f3955eefa531409d18c55d8/inf/ZWOpbA1ecNxReAZlEDZe9iiWCPOJvrRoOl9Cq1Z-fLjQhsztUkb2q2NfXTaGx05Kc5h2Uo5V6MOYf--FqAAxIQ%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0%20%28%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F%29.png&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=1573541518&tknv=v2&size=XXS&crop=0"
  },
  {
  "name": "XS",
  "url": "https://downloader.disk.yandex.ru/preview/814293809e2e0775d04497a5b6c833b8f6c290816f3955eefa531409d18c55d8/inf/ZWOpbA1ecNxReAZlEDZe9iiWCPOJvrRoOl9Cq1Z-fLjQhsztUkb2q2NfXTaGx05Kc5h2Uo5V6MOYf--FqAAxIQ%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0%20%28%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F%29.png&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=1573541518&tknv=v2&size=XS&crop=0"
  },
  {
  "name": "S",
  "url": "https://downloader.disk.yandex.ru/preview/814293809e2e0775d04497a5b6c833b8f6c290816f3955eefa531409d18c55d8/inf/ZWOpbA1ecNxReAZlEDZe9iiWCPOJvrRoOl9Cq1Z-fLjQhsztUkb2q2NfXTaGx05Kc5h2Uo5V6MOYf--FqAAxIQ%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0%20%28%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F%29.png&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=1573541518&tknv=v2&size=S&crop=0"
  },
  {
  "name": "M",
  "url": "https://downloader.disk.yandex.ru/preview/814293809e2e0775d04497a5b6c833b8f6c290816f3955eefa531409d18c55d8/inf/ZWOpbA1ecNxReAZlEDZe9iiWCPOJvrRoOl9Cq1Z-fLjQhsztUkb2q2NfXTaGx05Kc5h2Uo5V6MOYf--FqAAxIQ%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0%20%28%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F%29.png&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=1573541518&tknv=v2&size=M&crop=0"
  },
  {
  "name": "L",
  "url": "https://downloader.disk.yandex.ru/preview/814293809e2e0775d04497a5b6c833b8f6c290816f3955eefa531409d18c55d8/inf/ZWOpbA1ecNxReAZlEDZe9iiWCPOJvrRoOl9Cq1Z-fLjQhsztUkb2q2NfXTaGx05Kc5h2Uo5V6MOYf--FqAAxIQ%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0%20%28%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F%29.png&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=1573541518&tknv=v2&size=L&crop=0"
  },
  {
  "name": "XL",
  "url": "https://downloader.disk.yandex.ru/preview/814293809e2e0775d04497a5b6c833b8f6c290816f3955eefa531409d18c55d8/inf/ZWOpbA1ecNxReAZlEDZe9iiWCPOJvrRoOl9Cq1Z-fLjQhsztUkb2q2NfXTaGx05Kc5h2Uo5V6MOYf--FqAAxIQ%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0%20%28%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F%29.png&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=1573541518&tknv=v2&size=XL&crop=0"
  },
  {
  "name": "XXL",
  "url": "https://downloader.disk.yandex.ru/preview/814293809e2e0775d04497a5b6c833b8f6c290816f3955eefa531409d18c55d8/inf/ZWOpbA1ecNxReAZlEDZe9iiWCPOJvrRoOl9Cq1Z-fLjQhsztUkb2q2NfXTaGx05Kc5h2Uo5V6MOYf--FqAAxIQ%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0%20%28%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F%29.png&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=1573541518&tknv=v2&size=XXL&crop=0"
  },
  {
  "name": "XXXL",
  "url": "https://downloader.disk.yandex.ru/preview/814293809e2e0775d04497a5b6c833b8f6c290816f3955eefa531409d18c55d8/inf/ZWOpbA1ecNxReAZlEDZe9iiWCPOJvrRoOl9Cq1Z-fLjQhsztUkb2q2NfXTaGx05Kc5h2Uo5V6MOYf--FqAAxIQ%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0%20%28%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F%29.png&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=1573541518&tknv=v2&size=XXXL&crop=0"
  },
  {
  "name": "C",
  "url": "https://downloader.disk.yandex.ru/preview/814293809e2e0775d04497a5b6c833b8f6c290816f3955eefa531409d18c55d8/inf/ZWOpbA1ecNxReAZlEDZe9iiWCPOJvrRoOl9Cq1Z-fLjQhsztUkb2q2NfXTaGx05Kc5h2Uo5V6MOYf--FqAAxIQ%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0%20%28%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F%29.png&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=1573541518&tknv=v2&size=S&crop=0"
  }
  ],
  "resource_id": "1573541518:b9d51b6b673516c986d863bd782d158d5945d9aa52cb67adad3364ace064043c",
  "preview": "https://downloader.disk.yandex.ru/preview/814293809e2e0775d04497a5b6c833b8f6c290816f3955eefa531409d18c55d8/inf/ZWOpbA1ecNxReAZlEDZe9iiWCPOJvrRoOl9Cq1Z-fLjQhsztUkb2q2NfXTaGx05Kc5h2Uo5V6MOYf--FqAAxIQ%3D%3D?uid=1573541518&filename=%D0%90%D0%BB%D1%8C%D0%BF%D0%B0%D0%BA%D0%B0%20%28%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F%29.png&disposition=inline&hash=&limit=0&content_type=image%2Fjpeg&owner_uid=1573541518&tknv=v2&size=S&crop=0",
  "created": "2024-02-09T08:59:07+00:00",
  "exif": {},
  "name": "Альпака (копия).png",
  "type": "file",
  "size": 440431,
  "path": "disk:/Альпака (копия).png",
  "antivirus_status": "clean",
  "comment_ids": {
  "public_resource": "1573541518:b9d51b6b673516c986d863bd782d158d5945d9aa52cb67adad3364ace064043c",
  "private_resource": "1573541518:b9d51b6b673516c986d863bd782d158d5945d9aa52cb67adad3364ace064043c"
  },
  "mime_type": "multipart"
  }
```
