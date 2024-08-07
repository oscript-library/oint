﻿---
sidebar_position: 5
---

# Получить новости
 Получает нвости или одну новость с отобором по ID или доступности



`Функция ПолучитьНовости(Знач URL, Знач IDНовости = "", Знач Отбор = "UA", Знач Токен = "") Экспорт`

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | URL | --url | Строка | URL внешнего вебхука или адрес Bitrix24 при использовании токена |
  | IDНовости | --postid | Строка, Число | ID важной новости |
  | Отбор | --sel | Строка | Отбор новостей по доступу: UA все, SGn раб. группа, Un пользователь, DRn отдел, Gn группа |
  | Токен | --token | Строка | Токен авторизации, если используется не вебхук |

  
  Возвращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Bitrxi24

<br/>

:::tip
Метод в документации API: [log.blogpost.get](https://dev.1c-bitrix.ru/rest_help/log/log_blogpost_get.php)
:::
<br/>


```bsl title="Пример кода"
  IDНовости = "320";
  URL       = "https://b24-ar17wx.bitrix24.by/rest/1/4swokunb3tk7h7dt/";
  
  Результат = OPI_Bitrix24.ПолучитьНовости(URL, IDНовости);
  
  
  URL       = "b24-ar17wx.bitrix24.by";
  Токен     = "adf89366006e9f06006b12e400000001000...";
  
  Результат = OPI_Bitrix24.ПолучитьНовости(URL, IDНовости, , Токен);
```
	


```sh title="Пример команды CLI"
    
  oint bitrix24 ПолучитьНовости --url "b24-ar17wx.bitrix24.by" --postid "124" --sel %sel% --token "b9df7366006e9f06006b12e400000001000..."

```

```json title="Результат"
{
 "result": [
  {
   "ID": "40",
   "BLOG_ID": "1",
   "PUBLISH_STATUS": "P",
   "TITLE": "Заголовок новости",
   "AUTHOR_ID": "1",
   "ENABLE_COMMENTS": "Y",
   "NUM_COMMENTS": "0",
   "CODE": null,
   "MICRO": "N",
   "DETAIL_TEXT": "Текст новости",
   "DATE_PUBLISH": "2024-06-13T18:41:47+00:00",
   "CATEGORY_ID": null,
   "HAS_SOCNET_ALL": "N",
   "HAS_TAGS": "N",
   "HAS_IMAGES": "N",
   "HAS_PROPS": "Y",
   "HAS_COMMENT_IMAGES": null,
   "UF_BLOG_POST_DOC": {
    "ID": "1",
    "ENTITY_ID": "BLOG_POST",
    "FIELD_NAME": "UF_BLOG_POST_DOC",
    "USER_TYPE_ID": "file",
    "XML_ID": "UF_BLOG_POST_DOC",
    "SORT": "100",
    "MULTIPLE": "Y",
    "MANDATORY": "N",
    "SHOW_FILTER": "N",
    "SHOW_IN_LIST": "N",
    "EDIT_IN_LIST": "Y",
    "IS_SEARCHABLE": "Y",
    "SETTINGS": {
     "SIZE": 20,
     "LIST_WIDTH": 0,
     "LIST_HEIGHT": 0,
     "MAX_SHOW_SIZE": 0,
     "MAX_ALLOWED_SIZE": 0,
     "EXTENSIONS": [],
     "TARGET_BLANK": "Y"
    },
    "EDIT_FORM_LABEL": null,
    "LIST_COLUMN_LABEL": null,
    "LIST_FILTER_LABEL": null,
    "ERROR_MESSAGE": null,
    "HELP_MESSAGE": null,
    "USER_TYPE": {
     "USER_TYPE_ID": "file",
     "CLASS_NAME": "Bitrix\\Main\\UserField\\Types\\FileType",
     "EDIT_CALLBACK": [
      "Bitrix\\Main\\UserField\\Types\\FileType",
      "renderEdit"
     ],
     "VIEW_CALLBACK": [
      "Bitrix\\Main\\UserField\\Types\\FileType",
      "renderView"
     ],
     "USE_FIELD_COMPONENT": true,
     "DESCRIPTION": "Файл",
     "BASE_TYPE": "file"
    },
    "VALUE": false,
    "ENTITY_VALUE_ID": 40,
    "CUSTOM_DATA": []
   },
   "UF_BLOG_POST_URL_PRV": {
    "ID": "5",
    "ENTITY_ID": "BLOG_POST",
    "FIELD_NAME": "UF_BLOG_POST_URL_PRV",
    "USER_TYPE_ID": "url_preview",
    "XML_ID": "UF_BLOG_POST_URL_PRV",
    "SORT": "100",
    "MULTIPLE": "N",
    "MANDATORY": "N",
    "SHOW_FILTER": "N",
    "SHOW_IN_LIST": "N",
    "EDIT_IN_LIST": "Y",
    "IS_SEARCHABLE": "Y",
    "SETTINGS": [],
    "EDIT_FORM_LABEL": null,
    "LIST_COLUMN_LABEL": null,
    "LIST_FILTER_LABEL": null,
    "ERROR_MESSAGE": null,
    "HELP_MESSAGE": null,
    "USER_TYPE": {
     "USER_TYPE_ID": "url_preview",
     "CLASS_NAME": "Bitrix\\Main\\UrlPreview\\UrlPreviewUserType",
     "DESCRIPTION": "Содержимое ссылки",
     "BASE_TYPE": "int"
    },
    "VALUE": null,
    "ENTITY_VALUE_ID": 40,
    "CUSTOM_DATA": []
   },
   "UF_GRATITUDE": {
    "ID": "9",
    "ENTITY_ID": "BLOG_POST",
    "FIELD_NAME": "UF_GRATITUDE",
    "USER_TYPE_ID": "integer",
    "XML_ID": "UF_GRATITUDE",
    "SORT": "100",
    "MULTIPLE": "N",
    "MANDATORY": "N",
    "SHOW_FILTER": "N",
    "SHOW_IN_LIST": "N",
    "EDIT_IN_LIST": "Y",
    "IS_SEARCHABLE": "N",
    "SETTINGS": {
     "SIZE": 20,
     "MIN_VALUE": 0,
     "MAX_VALUE": 0,
     "DEFAULT_VALUE": null
    },
    "EDIT_FORM_LABEL": null,
    "LIST_COLUMN_LABEL": null,
    "LIST_FILTER_LABEL": null,
    "ERROR_MESSAGE": null,
    "HELP_MESSAGE": null,
    "USER_TYPE": {
     "USER_TYPE_ID": "integer",
     "CLASS_NAME": "Bitrix\\Main\\UserField\\Types\\IntegerType",
     "EDIT_CALLBACK": [
      "Bitrix\\Main\\UserField\\Types\\IntegerType",
      "renderEdit"
     ],
     "VIEW_CALLBACK": [
      "Bitrix\\Main\\UserField\\Types\\IntegerType",
      "renderView"
     ],
     "USE_FIELD_COMPONENT": true,
     "DESCRIPTION": "Целое число",
     "BASE_TYPE": "int"
    },
    "VALUE": null,
    "ENTITY_VALUE_ID": 40,
    "CUSTOM_DATA": []
   },
   "UF_BLOG_POST_FILE": {
    "ID": "19",
    "ENTITY_ID": "BLOG_POST",
    "FIELD_NAME": "UF_BLOG_POST_FILE",
    "USER_TYPE_ID": "disk_file",
    "XML_ID": "UF_BLOG_POST_FILE",
    "SORT": "100",
    "MULTIPLE": "Y",
    "MANDATORY": "N",
    "SHOW_FILTER": "N",
    "SHOW_IN_LIST": "N",
    "EDIT_IN_LIST": "Y",
    "IS_SEARCHABLE": "Y",
    "SETTINGS": {
     "IBLOCK_ID": null,
     "SECTION_ID": null,
     "UF_TO_SAVE_ALLOW_EDIT": false
    },
    "EDIT_FORM_LABEL": null,
    "LIST_COLUMN_LABEL": null,
    "LIST_FILTER_LABEL": null,
    "ERROR_MESSAGE": null,
    "HELP_MESSAGE": null,
    "USER_TYPE": {
     "USER_TYPE_ID": "disk_file",
     "CLASS_NAME": "Bitrix\\Disk\\Uf\\FileUserType",
     "DESCRIPTION": "Файл (Диск)",
     "BASE_TYPE": "int",
     "TAG": [
      "DISK FILE ID",
      "DOCUMENT ID"
     ]
    },
    "VALUE": [
     74,
     76
    ],
    "ENTITY_VALUE_ID": 40,
    "CUSTOM_DATA": {
     "PHOTO_TEMPLATE": ""
    }
   },
   "UF_MAIL_MESSAGE": {
    "ID": "75",
    "ENTITY_ID": "BLOG_POST",
    "FIELD_NAME": "UF_MAIL_MESSAGE",
    "USER_TYPE_ID": "mail_message",
    "XML_ID": "",
    "SORT": "100",
    "MULTIPLE": "N",
    "MANDATORY": "N",
    "SHOW_FILTER": "N",
    "SHOW_IN_LIST": "N",
    "EDIT_IN_LIST": "Y",
    "IS_SEARCHABLE": "N",
    "SETTINGS": null,
    "EDIT_FORM_LABEL": null,
    "LIST_COLUMN_LABEL": null,
    "LIST_FILTER_LABEL": null,
    "ERROR_MESSAGE": null,
    "HELP_MESSAGE": null,
    "USER_TYPE": {
     "USER_TYPE_ID": "mail_message",
     "CLASS_NAME": "Bitrix\\Mail\\MessageUserType",
     "DESCRIPTION": "Письмо (email)",
     "BASE_TYPE": "int",
     "VIEW_CALLBACK": [
      "Bitrix\\Mail\\MessageUserType",
      "getPublicView"
     ],
     "EDIT_CALLBACK": [
      "Bitrix\\Mail\\MessageUserType",
      "getPublicEdit"
     ],
     "onBeforeSave": [
      "Bitrix\\Mail\\MessageUserType",
      "onBeforeSave"
     ],
     "onDelete": [
      "Bitrix\\Mail\\MessageUserType",
      "onDelete"
     ]
    },
    "VALUE": null,
    "ENTITY_VALUE_ID": 40,
    "CUSTOM_DATA": []
   },
   "UF_BLOG_POST_IMPRTNT": {
    "ID": "93",
    "ENTITY_ID": "BLOG_POST",
    "FIELD_NAME": "UF_BLOG_POST_IMPRTNT",
    "USER_TYPE_ID": "integer",
    "XML_ID": "UF_BLOG_POST_IMPRTNT",
    "SORT": "100",
    "MULTIPLE": "N",
    "MANDATORY": "N",
    "SHOW_FILTER": "N",
    "SHOW_IN_LIST": "Y",
    "EDIT_IN_LIST": "Y",
    "IS_SEARCHABLE": "N",
    "SETTINGS": {
     "SIZE": 20,
     "MIN_VALUE": 0,
     "MAX_VALUE": 0,
     "DEFAULT_VALUE": null
    },
    "EDIT_FORM_LABEL": "Важное сообщение",
    "LIST_COLUMN_LABEL": "Важное",
    "LIST_FILTER_LABEL": "Важное",
    "ERROR_MESSAGE": null,
    "HELP_MESSAGE": null,
    "USER_TYPE": {
     "USER_TYPE_ID": "integer",
     "CLASS_NAME": "Bitrix\\Main\\UserField\\Types\\IntegerType",
     "EDIT_CALLBACK": [
      "Bitrix\\Main\\UserField\\Types\\IntegerType",
      "renderEdit"
     ],
     "VIEW_CALLBACK": [
      "Bitrix\\Main\\UserField\\Types\\IntegerType",
      "renderView"
     ],
     "USE_FIELD_COMPONENT": true,
     "DESCRIPTION": "Целое число",
     "BASE_TYPE": "int"
    },
    "VALUE": null,
    "ENTITY_VALUE_ID": 40,
    "CUSTOM_DATA": []
   },
   "UF_IMPRTANT_DATE_END": {
    "ID": "95",
    "ENTITY_ID": "BLOG_POST",
    "FIELD_NAME": "UF_IMPRTANT_DATE_END",
    "USER_TYPE_ID": "datetime",
    "XML_ID": "UF_IMPRTANT_DATE_END",
    "SORT": "100",
    "MULTIPLE": "N",
    "MANDATORY": "N",
    "SHOW_FILTER": "N",
    "SHOW_IN_LIST": "N",
    "EDIT_IN_LIST": "Y",
    "IS_SEARCHABLE": "N",
    "SETTINGS": {
     "DEFAULT_VALUE": {
      "TYPE": "NONE",
      "VALUE": ""
     },
     "USE_SECOND": "Y",
     "USE_TIMEZONE": "N"
    },
    "EDIT_FORM_LABEL": "Срок действия",
    "LIST_COLUMN_LABEL": "Срок",
    "LIST_FILTER_LABEL": null,
    "ERROR_MESSAGE": null,
    "HELP_MESSAGE": null,
    "USER_TYPE": {
     "USER_TYPE_ID": "datetime",
     "CLASS_NAME": "Bitrix\\Main\\UserField\\Types\\DateTimeType",
     "EDIT_CALLBACK": [
      "Bitrix\\Main\\UserField\\Types\\DateTimeType",
      "renderEdit"
     ],
     "VIEW_CALLBACK": [
      "Bitrix\\Main\\UserField\\Types\\DateTimeType",
      "renderView"
     ],
     "USE_FIELD_COMPONENT": true,
     "DESCRIPTION": "Дата со временем",
     "BASE_TYPE": "datetime"
    },
    "VALUE": "",
    "ENTITY_VALUE_ID": 40,
    "CUSTOM_DATA": []
   },
   "UF_BLOG_POST_VOTE": {
    "ID": "143",
    "ENTITY_ID": "BLOG_POST",
    "FIELD_NAME": "UF_BLOG_POST_VOTE",
    "USER_TYPE_ID": "vote",
    "XML_ID": "UF_BLOG_POST_VOTE",
    "SORT": "100",
    "MULTIPLE": "N",
    "MANDATORY": "N",
    "SHOW_FILTER": "N",
    "SHOW_IN_LIST": "Y",
    "EDIT_IN_LIST": "Y",
    "IS_SEARCHABLE": "N",
    "SETTINGS": {
     "CHANNEL_ID": 1,
     "UNIQUE": 8,
     "UNIQUE_IP_DELAY": {
      "DELAY": "10",
      "DELAY_TYPE": "D"
     },
     "NOTIFY": "I"
    },
    "EDIT_FORM_LABEL": null,
    "LIST_COLUMN_LABEL": null,
    "LIST_FILTER_LABEL": null,
    "ERROR_MESSAGE": null,
    "HELP_MESSAGE": null,
    "USER_TYPE": {
     "USER_TYPE_ID": "vote",
     "CLASS_NAME": "Bitrix\\Vote\\Uf\\VoteUserType",
     "DESCRIPTION": "Опрос",
     "BASE_TYPE": "int"
    },
    "VALUE": null,
    "ENTITY_VALUE_ID": 40,
    "CUSTOM_DATA": []
   },
   "FILES": [
    74,
    76
   ]
  }
 ],
 "total": 1,
 "time": {
  "start": 1718304110.82197,
  "finish": 1718304110.86041,
  "duration": 0.0384387969970703,
  "processing": 0.0108139514923096,
  "date_start": "2024-06-13T18:41:50+00:00",
  "date_finish": "2024-06-13T18:41:50+00:00",
  "operating_reset_at": 1718304710,
  "operating": 0
 }
}
```
