﻿---
sidebar_position: 9
---

# Complete task
 Complete task by ID



`Function CompleteTask(Val URL, Val TaskID, Val Token = "") Export`

 | Parameter | CLI option | Type | Destination |
 |-|-|-|-|
 | URL | --url | String | URL of webhook or a Bitrix24 domain, when token used |
 | TaskID | --task | Number, String | Task ID |
 | Token | --token | String | Access token, when app auth method used |

 
 Returns: Map Of KeyAndValue - serialized JSON of answer from Bitrix24 API

<br/>

:::tip
Method at API documentation: [tasks.task.complete](https://dev.1c-bitrix.ru/rest_help/tasks/task/tasks/tasks_task_complete.php)
:::
<br/>


```bsl title="Code example"
 URL = "https://b24-ar17wx.bitrix24.by/rest/1/4swokunb3tk7h7dt/";
 TaskID = "720";
 
 Result = OPI_Bitrix24.CompleteTask(URL, TaskID);
 
 
 URL = "b24-ar17wx.bitrix24.by";
 Token = "adf89366006e9f06006b12e400000001000...";
 TaskID = "722";
 
 Result = OPI_Bitrix24.CompleteTask(URL, TaskID, Token);
```
	


```sh title="CLI command example"
 
 oint bitrix24 CompleteTask --url "b24-ar17wx.bitrix24.by" --task "170" --token "b9df7366006e9f06006b12e400000001000..."

```

```json title="Result"
{
 "result": {
 "task": {
 "id": "110",
 "parentId": null,
 "title": "Another task title",
 "description": "Another task description",
 "mark": null,
 "priority": "1",
 "multitask": "N",
 "notViewed": "N",
 "replicate": "N",
 "stageId": "0",
 "createdBy": "1",
 "createdDate": "2024-06-15T17:42:04+00:00",
 "responsibleId": "1",
 "changedBy": "1",
 "changedDate": "2024-06-15T17:42:17+00:00",
 "statusChangedBy": "1",
 "closedBy": "1",
 "closedDate": "2024-06-15T17:42:17+00:00",
 "activityDate": "2024-06-15T17:42:17+00:00",
 "dateStart": null,
 "deadline": "2024-06-16T17:42:00+00:00",
 "startDatePlan": null,
 "endDatePlan": null,
 "guid": "{8d5b2535-b856-4da0-8e67-df7eb35c1add}",
 "xmlId": null,
 "commentsCount": "1",
 "serviceCommentsCount": "1",
 "allowChangeDeadline": "N",
 "allowTimeTracking": "N",
 "taskControl": "N",
 "addInReport": "N",
 "forkedByTemplateId": null,
 "timeEstimate": "0",
 "timeSpentInLogs": null,
 "matchWorkTime": "N",
 "forumTopicId": "44",
 "forumId": "11",
 "siteId": "s1",
 "subordinate": "N",
 "exchangeModified": null,
 "exchangeId": null,
 "outlookVersion": "4",
 "viewedDate": "2024-06-15T17:42:17+00:00",
 "sorting": null,
 "durationFact": null,
 "isMuted": "N",
 "isPinned": "N",
 "isPinnedInGroup": "N",
 "flowId": null,
 "descriptionInBbcode": "Y",
 "status": "5",
 "statusChangedDate": "2024-06-15T17:42:17+00:00",
 "durationPlan": null,
 "durationType": "days",
 "favorite": "N",
 "groupId": "0",
 "auditors": [],
 "accomplices": [],
 "checklist": [],
 "group": [],
 "creator": {
 "id": "1",
 "name": "Anton Titovets",
 "link": "/company/personal/user/1/",
 "icon": "https://b24-ar17wx.bitrix24.by/b28528874/resize_cache/30/c0120a8d7c10d63c83e32398d1ec4d9e/main/d7e/d7e99cf556e4ab676463dae2c00ddfbb/a7e0af6899300e3c684caeca5c334d81.jpg",
 "workPosition": null
 },
 "responsible": {
 "id": "1",
 "name": "Anton Titovets",
 "link": "/company/personal/user/1/",
 "icon": "https://b24-ar17wx.bitrix24.by/b28528874/resize_cache/30/c0120a8d7c10d63c83e32398d1ec4d9e/main/d7e/d7e99cf556e4ab676463dae2c00ddfbb/a7e0af6899300e3c684caeca5c334d81.jpg",
 "workPosition": null
 },
 "accomplicesData": [],
 "auditorsData": [],
 "newCommentsCount": 0,
 "action": {
 "accept": false,
 "decline": false,
 "complete": false,
 "approve": false,
 "disapprove": false,
 "start": false,
 "pause": false,
 "delegate": false,
 "remove": true,
 "edit": true,
 "defer": false,
 "renew": true,
 "create": true,
 "changeDeadline": true,
 "checklistAddItems": true,
 "addFavorite": true,
 "deleteFavorite": false,
 "rate": true,
 "edit.originator": false,
 "checklist.reorder": true,
 "elapsedtime.add": true,
 "dayplan.timer.toggle": false,
 "edit.plan": true,
 "checklist.add": true,
 "favorite.add": true,
 "favorite.delete": false
 },
 "checkListTree": {
 "nodeId": 0,
 "fields": {
 "id": null,
 "copiedId": null,
 "entityId": null,
 "userId": 1,
 "createdBy": null,
 "parentId": null,
 "title": "",
 "sortIndex": null,
 "displaySortIndex": "",
 "isComplete": false,
 "isImportant": false,
 "completedCount": 0,
 "members": [],
 "attachments": []
 },
 "action": [],
 "descendants": []
 },
 "checkListCanAdd": true
 }
 },
 "time": {
 "start": 1718473336.97976,
 "finish": 1718473337.32391,
 "duration": 0.344156980514526,
 "processing": 0.312964200973511,
 "date_start": "2024-06-15T17:42:16+00:00",
 "date_finish": "2024-06-15T17:42:17+00:00",
 "operating_reset_at": 1718473937,
 "operating": 0.312941789627075
 }
}
```
