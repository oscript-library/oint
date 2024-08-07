﻿---
sidebar_position: 13
---

# Delete folder
 Remove folder with subfolders



`Function DeleteFolder(Val URL, Val FolderID, Val Token = "") Export`

 | Parameter | CLI option | Type | Destination |
 |-|-|-|-|
 | URL | --url | String | URL of webhook or a Bitrix24 domain, when token used |
 | FolderID | --folderid | String, Number | ID of folder to be deleted |
 | Token | --token | String | Access token, when not-webhook method used |

 
 Returns: Map Of KeyAndValue - serialized JSON of answer from Bitrix24 API

<br/>




```bsl title="Code example"
 URL = "https://b24-ar17wx.bitrix24.by/rest/1/4swokunb3tk7h7dt/";
 FolderID = "480";
 
 Result = OPI_Bitrix24.DeleteFolder(URL, FolderID);
 
 
 URL = "b24-ar17wx.bitrix24.by";
 Token = "b9df7366006e9f06006b12e400000001000...";
 FolderID = "482";
 
 Result = OPI_Bitrix24.DeleteFolder(URL, FolderID, Token);
```
	


```sh title="CLI command example"
 
 oint bitrix24 DeleteFolder --url "b24-ar17wx.bitrix24.by" --folderid "482" --token "b9df7366006e9f06006b12e400000001000..."

```

```json title="Result"
{
 "result": true,
 "time": {
 "start": 1719047257.50616,
 "finish": 1719047257.55445,
 "duration": 0.048285961151123,
 "processing": 0.0174880027770996,
 "date_start": "2024-06-22T09:07:37+00:00",
 "date_finish": "2024-06-22T09:07:37+00:00",
 "operating_reset_at": 1719047857,
 "operating": 0
 }
}
```
