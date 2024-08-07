﻿---
sidebar_position: 8
---

# Save image to album
 Saves an image to the community album



`Function SaveImageToAlbum(Val AlbumID, Val Image, Val Description = "", Val Parameters = "") Export`

 | Parameter | CLI option | Type | Destination |
 |-|-|-|-|
 | AlbumID | --album | String, Number | Album ID |
 | Image | --picture | BinaryData,String | Image file |
 | Description | --description | String | Image description |
 | Parameters | --auth | Structure Of String | Authorization JSON or path to .json |

 
 Returns: Map Of KeyAndValue - Serialized JSON response from VK

<br/>




```bsl title="Code example"
 Parameters = GetVKParameters();
 ImageDescription = "AutoTestImage";
 AlbumID = "304549394";
 
 Image = "https://openintegrations.dev/test_data/picture.jpg"; // URL, Path to file or Binary Data
 TFN = GetTempFileName("png");
 FileCopy(Image, TFN);
 
 Image = New BinaryData(TFN);
 
 Result = OPI_VK.SaveImageToAlbum(AlbumID, Image, ImageDescription, Parameters);
 Result = OPI_VK.SaveImageToAlbum(AlbumID, TFN, ImageDescription, Parameters);
```
	


```sh title="CLI command example"
 
 oint vk SaveImageToAlbum --album %album% --picture "https://openintegrations.dev/test_data/picture.jpg" --description %description% --auth %auth%

```

```json title="Result"
{
 "response": [
 {
 "album_id": 304498513,
 "date": 1717072420,
 "id": 457244015,
 "owner_id": -218861756,
 "sizes": [
 {
 "height": 56,
 "type": "s",
 "width": 75,
 "url": "https://sun9-38.userapi.com/impg/ejNe0jcXKF-JoKZdXKCs97GJjsJh4ZGE0iH8KQ/88_4gS4JO3s.jpg?size=75x56&quality=96&sign=025829abd0851633ab894cc48e64dbbb&c_uniq_tag=2CLDgToJpt6arrVUiZQ9l04lyJ415VJvA6WDs7UOnoI&type=album"
 },
 {
 "height": 97,
 "type": "m",
 "width": 130,
 "url": "https://sun9-38.userapi.com/impg/ejNe0jcXKF-JoKZdXKCs97GJjsJh4ZGE0iH8KQ/88_4gS4JO3s.jpg?size=130x97&quality=96&sign=695e45c5d6322047a61314118cb57ef4&c_uniq_tag=cDuBpPHNopdt-Cizd6uRFsKIdW_Oui8oo7TYcflfRgE&type=album"
 },
 {
 "height": 453,
 "type": "x",
 "width": 604,
 "url": "https://sun9-38.userapi.com/impg/ejNe0jcXKF-JoKZdXKCs97GJjsJh4ZGE0iH8KQ/88_4gS4JO3s.jpg?size=604x453&quality=96&sign=13ca3aaef94483586ace112657fe8241&c_uniq_tag=_pon027js3STBAQDQY4UbPdMBOh0AzKmalzEJnHAb-8&type=album"
 },
 {
 "height": 605,
 "type": "y",
 "width": 807,
 "url": "https://sun9-38.userapi.com/impg/ejNe0jcXKF-JoKZdXKCs97GJjsJh4ZGE0iH8KQ/88_4gS4JO3s.jpg?size=807x605&quality=96&sign=ca6a02d61aa6e88bbd63631e32c49895&c_uniq_tag=NSEWtM7U9s0sKGN84elYe-6ayOzx8dJXPD5JxUFUSK8&type=album"
 },
 {
 "height": 960,
 "type": "z",
 "width": 1280,
 "url": "https://sun9-38.userapi.com/impg/ejNe0jcXKF-JoKZdXKCs97GJjsJh4ZGE0iH8KQ/88_4gS4JO3s.jpg?size=1280x960&quality=96&sign=b10c42d8778cd2ac306fdeed0d7c77e9&c_uniq_tag=OsjHk58Ztn163AK2vT9xOw8tz75w00HoqpQSzJ9DOzo&type=album"
 },
 {
 "height": 1920,
 "type": "w",
 "width": 2560,
 "url": "https://sun9-38.userapi.com/impg/ejNe0jcXKF-JoKZdXKCs97GJjsJh4ZGE0iH8KQ/88_4gS4JO3s.jpg?size=2560x1920&quality=96&sign=2b5cb4cd90cd4d100b394da5cd1d2540&c_uniq_tag=JXApXjELC3QaCHRgTV2wAZ9xT_1uGPHx2DnJ15ZrfqQ&type=album"
 },
 {
 "height": 97,
 "type": "o",
 "width": 130,
 "url": "https://sun9-38.userapi.com/impg/ejNe0jcXKF-JoKZdXKCs97GJjsJh4ZGE0iH8KQ/88_4gS4JO3s.jpg?size=130x97&quality=96&sign=695e45c5d6322047a61314118cb57ef4&c_uniq_tag=cDuBpPHNopdt-Cizd6uRFsKIdW_Oui8oo7TYcflfRgE&type=album"
 },
 {
 "height": 150,
 "type": "p",
 "width": 200,
 "url": "https://sun9-38.userapi.com/impg/ejNe0jcXKF-JoKZdXKCs97GJjsJh4ZGE0iH8KQ/88_4gS4JO3s.jpg?size=200x150&quality=96&sign=aea8308f1793d48319babde7d4cf7a2a&c_uniq_tag=0oVRnXvNOW_41uhPO1-daYe0KK2SgLDPeMJ4gk2Js5g&type=album"
 },
 {
 "height": 240,
 "type": "q",
 "width": 320,
 "url": "https://sun9-38.userapi.com/impg/ejNe0jcXKF-JoKZdXKCs97GJjsJh4ZGE0iH8KQ/88_4gS4JO3s.jpg?size=320x240&quality=96&sign=f3d612a2ac0b297964e48d1775fa0c70&c_uniq_tag=LAynb-BcGM4BS_ew4PYMa93V627AEj8nTMcnq8Wy5gY&type=album"
 },
 {
 "height": 382,
 "type": "r",
 "width": 510,
 "url": "https://sun9-38.userapi.com/impg/ejNe0jcXKF-JoKZdXKCs97GJjsJh4ZGE0iH8KQ/88_4gS4JO3s.jpg?size=510x382&quality=96&sign=88209c9869f3522afe0a292a5884e246&c_uniq_tag=eMrSiFeVaca-qCgJXIxD1U1wU6ZInBYxsJVHxKn8CbY&type=album"
 }
 ],
 "text": "AutoTestImage",
 "user_id": 100,
 "web_view_token": "dcacf60c612a67607b",
 "has_tags": false
 }
 ]
}
```
