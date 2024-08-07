﻿---
sidebar_position: 17
---

# Get chat files folder
 Get information about folder for chat files



`Function GetChatFilesFolder(Val URL, Val ChatID, Val Token = "") Export`

 | Parameter | CLI option | Type | Destination |
 |-|-|-|-|
 | URL | --url | String | URL of webhook or a Bitrix24 domain, when token used |
 | ChatID | --chat | String, Number | Chat ID |
 | Token | --token | String | Access token, when app auth method used |

 
 Returns: Map Of KeyAndValue - serialized JSON of answer from Bitrix24 API

<br/>

:::tip
Method at API documentation: [im.disk.folder.get](https://dev.1c-bitrix.ru/learning/course/index.php?COURSE_ID=93&LESSON_ID=11483)
:::
<br/>


```bsl title="Code example"
 URL = "https://b24-ar17wx.bitrix24.by/rest/1/4swokunb3tk7h7dt/";
 ChatID = "264";
 
 Result = OPI_Bitrix24.GetChatFilesFolder(URL, ChatID);
 
 
 URL = "b24-ar17wx.bitrix24.by";
 Token = "adf89366006e9f06006b12e400000001000...";
 ChatID = "266";
 
 Result = OPI_Bitrix24.GetChatFilesFolder(URL, ChatID, Token);
```
	


```sh title="CLI command example"
 
 oint bitrix24 GetChatFilesFolder --url %url% --chat %chat% --token %token%

```

```json title="Result"
{
 "result": {
 "ID": 3250
 },
 "time": {
 "start": 1720969169.10256,
 "finish": 1720969169.1584,
 "duration": 0.0558350086212158,
 "processing": 0.0327038764953613,
 "date_start": "2024-07-14T14:59:29+00:00",
 "date_finish": "2024-07-14T14:59:29+00:00",
 "operating_reset_at": 1720969769,
 "operating": 0
 }
}
```
