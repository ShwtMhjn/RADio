//
//  TestData.swift
//  RADioTests
//
//  Created by Shweta Jagdish Mahajan (Digital) on 27/08/18.
//  Copyright © 2018 Shweta Jagdish Mahajan (Digital). All rights reserved.
//

import Foundation
@testable import RADio

//MARK: Artist Search Results
let artistSearchResults = """
{
"results": {
"opensearch:Query": {
"#text": "",
"role": "request",
"searchTerms": "Yui",
"startPage": "1"
},
"opensearch:totalResults": "13655",
"opensearch:startIndex": "0",
"opensearch:itemsPerPage": "30",
"artistmatches": {
"artist": [
{
"name": "YUI",
"listeners": "182882",
"mbid": "f8a17bc3-82ba-4e40-bc8f-7d2445d9e818",
"url": "https://www.last.fm/music/YUI",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/162f127d01844bb0b6891691b376955d.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/162f127d01844bb0b6891691b376955d.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/162f127d01844bb0b6891691b376955d.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/162f127d01844bb0b6891691b376955d.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/162f127d01844bb0b6891691b376955d.png",
"size": "mega"
}
]
},
{
                    "name": "Yuki Sakura",
                    "listeners": "17203",
                    "mbid": "453e72bd-d37d-4fd0-a0b8-90f0c0a18993",
                    "url": "https://www.last.fm/music/Yuki+Sakura",
                    "streamable": "0",
                    "image": [
                        {
                            "#text": "",
                            "size": "small"
                        },
                        {
                            "#text": "",
                            "size": "medium"
                        },
                        {
                            "#text": "",
                            "size": "large"
                        },
                        {
                            "#text": "",
                            "size": "extralarge"
                        },
                        {
                            "#text": "",
                            "size": "mega"
                        }
                    ]
                },
{
"name": "YUKI",
"listeners": "109290",
"mbid": "c45f4716-448b-42ef-8e56-1d711672077b",
"url": "https://www.last.fm/music/YUKI",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/cd4cc9364225b60395d0f8edafbb4456.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/cd4cc9364225b60395d0f8edafbb4456.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/cd4cc9364225b60395d0f8edafbb4456.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/cd4cc9364225b60395d0f8edafbb4456.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/cd4cc9364225b60395d0f8edafbb4456.png",
"size": "mega"
}
]
},
{
"name": "Yumi Zouma",
"listeners": "113832",
"mbid": "6e3252a1-397d-4bf8-b2b7-d16f7fbcb3dd",
"url": "https://www.last.fm/music/Yumi+Zouma",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/ccd105fb00872994f12d9985ee6ac478.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/ccd105fb00872994f12d9985ee6ac478.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/ccd105fb00872994f12d9985ee6ac478.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/ccd105fb00872994f12d9985ee6ac478.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/ccd105fb00872994f12d9985ee6ac478.png",
"size": "mega"
}
]
},
{
"name": "James Yuill",
"listeners": "177631",
"mbid": "acd96b93-511c-49d1-8438-a399d767f3ef",
"url": "https://www.last.fm/music/James+Yuill",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/3f0ce760cffb44949622c06b25a2cb4c.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/3f0ce760cffb44949622c06b25a2cb4c.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/3f0ce760cffb44949622c06b25a2cb4c.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/3f0ce760cffb44949622c06b25a2cb4c.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/3f0ce760cffb44949622c06b25a2cb4c.png",
"size": "mega"
}
]
},
{
"name": "Yuridia",
"listeners": "75928",
"mbid": "15ba83b7-d89a-4dd6-9695-1290fb567493",
"url": "https://www.last.fm/music/Yuridia",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/4c7c5ced332fd0e7c8abebada3a74779.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/4c7c5ced332fd0e7c8abebada3a74779.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/4c7c5ced332fd0e7c8abebada3a74779.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/4c7c5ced332fd0e7c8abebada3a74779.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/4c7c5ced332fd0e7c8abebada3a74779.png",
"size": "mega"
}
]
},
{
"name": "YURIA",
"listeners": "30452",
"mbid": "568b62fc-a8fe-4811-a9ee-8473914381e9",
"url": "https://www.last.fm/music/YURIA",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/31f345e4c0714b6b913820c48d886404.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/31f345e4c0714b6b913820c48d886404.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/31f345e4c0714b6b913820c48d886404.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/31f345e4c0714b6b913820c48d886404.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/31f345e4c0714b6b913820c48d886404.png",
"size": "mega"
}
]
},
{
"name": "Yuri",
"listeners": "64937",
"mbid": "f9c8e698-37aa-4d75-8a2e-c5bc01d00f9e",
"url": "https://www.last.fm/music/Yuri",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/ddc9ec74872d81c47e5ba77e8396c7fb.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/ddc9ec74872d81c47e5ba77e8396c7fb.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/ddc9ec74872d81c47e5ba77e8396c7fb.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/ddc9ec74872d81c47e5ba77e8396c7fb.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/ddc9ec74872d81c47e5ba77e8396c7fb.png",
"size": "mega"
}
]
},
{
"name": "Yui Horie",
"listeners": "24975",
"mbid": "55266ab1-6655-45fe-83eb-40702468ce7d",
"url": "https://www.last.fm/music/Yui+Horie",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/1c88e0bc5c2347ccad30250a38bb8163.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/1c88e0bc5c2347ccad30250a38bb8163.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/1c88e0bc5c2347ccad30250a38bb8163.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/1c88e0bc5c2347ccad30250a38bb8163.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/1c88e0bc5c2347ccad30250a38bb8163.png",
"size": "mega"
}
]
},
{
"name": "Horie Yui",
"listeners": "23454",
"mbid": "55266ab1-6655-45fe-83eb-40702468ce7d",
"url": "https://www.last.fm/music/Horie+Yui",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/9f05a889db55495c81098b516907da4e.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/9f05a889db55495c81098b516907da4e.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/9f05a889db55495c81098b516907da4e.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/9f05a889db55495c81098b516907da4e.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/9f05a889db55495c81098b516907da4e.png",
"size": "mega"
}
]
},
{
"name": "Yuri Kane",
"listeners": "55322",
"mbid": "b043388b-4122-4349-83ea-5df2c4db77f5",
"url": "https://www.last.fm/music/Yuri+Kane",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/5f2941abfc4545f9ba2073145f5f3def.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/5f2941abfc4545f9ba2073145f5f3def.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/5f2941abfc4545f9ba2073145f5f3def.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/5f2941abfc4545f9ba2073145f5f3def.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/5f2941abfc4545f9ba2073145f5f3def.png",
"size": "mega"
}
]
},
{
"name": "Makino Yui",
"listeners": "18148",
"mbid": "1a83b2c2-a848-496a-8220-3f22d0fb47db",
"url": "https://www.last.fm/music/Makino+Yui",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/84a207f1ebaa4283bb52729e88797447.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/84a207f1ebaa4283bb52729e88797447.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/84a207f1ebaa4283bb52729e88797447.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/84a207f1ebaa4283bb52729e88797447.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/84a207f1ebaa4283bb52729e88797447.png",
"size": "mega"
}
]
},
{
"name": "Yuiko",
"listeners": "5425",
"mbid": "efcc2f1e-fcf9-45d4-b9f0-062ee3e0081e",
"url": "https://www.last.fm/music/Yuiko",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/8875a4bd0a41119e538de5d97979d11c.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/8875a4bd0a41119e538de5d97979d11c.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/8875a4bd0a41119e538de5d97979d11c.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/8875a4bd0a41119e538de5d97979d11c.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/8875a4bd0a41119e538de5d97979d11c.png",
"size": "mega"
}
]
},
{
"name": "Yuki Murata",
"listeners": "13017",
"mbid": "7c702c87-43a9-4e11-a84d-27e6cdb8b79b",
"url": "https://www.last.fm/music/Yuki+Murata",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/7d77118fb7544d4687462a367c1209fa.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/7d77118fb7544d4687462a367c1209fa.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/7d77118fb7544d4687462a367c1209fa.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/7d77118fb7544d4687462a367c1209fa.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/7d77118fb7544d4687462a367c1209fa.png",
"size": "mega"
}
]
},
{
"name": "Yuji Ohno",
"listeners": "8360",
"mbid": "49b6b461-0e97-4e96-8e5f-b77192ea7762",
"url": "https://www.last.fm/music/Yuji+Ohno",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/71a55c43d35c410b884676943b0d89de.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/71a55c43d35c410b884676943b0d89de.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/71a55c43d35c410b884676943b0d89de.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/71a55c43d35c410b884676943b0d89de.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/71a55c43d35c410b884676943b0d89de.png",
"size": "mega"
}
]
},
{
"name": "Yumi Kawamura",
"listeners": "9943",
"mbid": "",
"url": "https://www.last.fm/music/Yumi+Kawamura",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/9c61d77524934f589f10c216c5d088e0.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/9c61d77524934f589f10c216c5d088e0.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/9c61d77524934f589f10c216c5d088e0.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/9c61d77524934f589f10c216c5d088e0.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/9c61d77524934f589f10c216c5d088e0.png",
"size": "mega"
}
]
},
{
"name": "Yuri Buenaventura",
"listeners": "46700",
"mbid": "4b33cf77-1ced-42e2-955c-ace858710b69",
"url": "https://www.last.fm/music/Yuri+Buenaventura",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/1a0388d4cb78438ba6eb4014ae78ac34.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/1a0388d4cb78438ba6eb4014ae78ac34.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/1a0388d4cb78438ba6eb4014ae78ac34.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/1a0388d4cb78438ba6eb4014ae78ac34.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/1a0388d4cb78438ba6eb4014ae78ac34.png",
"size": "mega"
}
]
},
{
"name": "MADEMOISELLE YULIA",
"listeners": "5066",
"mbid": "9e494977-83a9-432d-9b6b-a037f8328ecd",
"url": "https://www.last.fm/music/MADEMOISELLE+YULIA",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/f7a741e20f7087d5657f55b23c8a05aa.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/f7a741e20f7087d5657f55b23c8a05aa.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/f7a741e20f7087d5657f55b23c8a05aa.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/f7a741e20f7087d5657f55b23c8a05aa.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/f7a741e20f7087d5657f55b23c8a05aa.png",
"size": "mega"
}
]
},
{
"name": "Yuri Gagarin",
"listeners": "10370",
"mbid": "4a1ee5c3-6b83-4553-a8de-73f1c045e15d",
"url": "https://www.last.fm/music/Yuri+Gagarin",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/8ee80927ca964c1ccceef0d7110665a6.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/8ee80927ca964c1ccceef0d7110665a6.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/8ee80927ca964c1ccceef0d7110665a6.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/8ee80927ca964c1ccceef0d7110665a6.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/8ee80927ca964c1ccceef0d7110665a6.png",
"size": "mega"
}
]
},
{
"name": "YURiE",
"listeners": "10834",
"mbid": "2c0a2945-ad39-4b00-aeeb-fab1d1b30ed1",
"url": "https://www.last.fm/music/YURiE",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/1b44e7f31be34af0a50dc93927d24b91.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/1b44e7f31be34af0a50dc93927d24b91.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/1b44e7f31be34af0a50dc93927d24b91.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/1b44e7f31be34af0a50dc93927d24b91.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/1b44e7f31be34af0a50dc93927d24b91.png",
"size": "mega"
}
]
},
{
"name": "O Yuki Conjugate",
"listeners": "13592",
"mbid": "82c27a4b-9622-4e7f-8f54-74dd03c59e76",
"url": "https://www.last.fm/music/O+Yuki+Conjugate",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/5408e4efe3844b79bbc2bb56effeb26f.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/5408e4efe3844b79bbc2bb56effeb26f.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/5408e4efe3844b79bbc2bb56effeb26f.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/5408e4efe3844b79bbc2bb56effeb26f.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/5408e4efe3844b79bbc2bb56effeb26f.png",
"size": "mega"
}
]
},
{
"name": "Yuni Wa",
"listeners": "10084",
"mbid": "",
"url": "https://www.last.fm/music/Yuni+Wa",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/c9d4011513395c92377f00fe86b29217.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/c9d4011513395c92377f00fe86b29217.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/c9d4011513395c92377f00fe86b29217.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/c9d4011513395c92377f00fe86b29217.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/c9d4011513395c92377f00fe86b29217.png",
"size": "mega"
}
]
},
{
"name": "Konishi Kayo & Kondoo Yukio",
"listeners": "27066",
"mbid": "",
"url": "https://www.last.fm/music/Konishi+Kayo+&+Kondoo+Yukio",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/80a4bc86dabf4d0acda02524adbd0e4a.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/80a4bc86dabf4d0acda02524adbd0e4a.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/80a4bc86dabf4d0acda02524adbd0e4a.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/80a4bc86dabf4d0acda02524adbd0e4a.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/80a4bc86dabf4d0acda02524adbd0e4a.png",
"size": "mega"
}
]
},
{
"name": "Miyauchi Yuri",
"listeners": "4688",
"mbid": "",
"url": "https://www.last.fm/music/Miyauchi+Yuri",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/139ef8eb46412a04f11a9616e9c4244f.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/139ef8eb46412a04f11a9616e9c4244f.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/139ef8eb46412a04f11a9616e9c4244f.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/139ef8eb46412a04f11a9616e9c4244f.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/139ef8eb46412a04f11a9616e9c4244f.png",
"size": "mega"
}
]
},
{
"name": "Yuichiro Fujimoto",
"listeners": "13418",
"mbid": "17e11981-3fd7-4be0-ac04-a578c4569979",
"url": "https://www.last.fm/music/Yuichiro+Fujimoto",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/f89a50ddae2c4e57a98953b2a56c7cca.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/f89a50ddae2c4e57a98953b2a56c7cca.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/f89a50ddae2c4e57a98953b2a56c7cca.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/f89a50ddae2c4e57a98953b2a56c7cca.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/f89a50ddae2c4e57a98953b2a56c7cca.png",
"size": "mega"
}
]
},
{
"name": "Yukihiro Jindo",
"listeners": "2437",
"mbid": "",
"url": "https://www.last.fm/music/Yukihiro+Jindo",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/cb9145fac1414a5ea5caa45444485d2f.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/cb9145fac1414a5ea5caa45444485d2f.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/cb9145fac1414a5ea5caa45444485d2f.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/cb9145fac1414a5ea5caa45444485d2f.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/cb9145fac1414a5ea5caa45444485d2f.png",
"size": "mega"
}
]
},
{
"name": "Yuri Sazonoff",
"listeners": "4169",
"mbid": "a17fdc7e-572c-46af-8807-4f97ecaf9270",
"url": "https://www.last.fm/music/Yuri+Sazonoff",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/b53ea90b7b8f455cbd220a8108924645.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/b53ea90b7b8f455cbd220a8108924645.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/b53ea90b7b8f455cbd220a8108924645.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/b53ea90b7b8f455cbd220a8108924645.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/b53ea90b7b8f455cbd220a8108924645.png",
"size": "mega"
}
]
},
{
"name": "Yumi Matsuzawa",
"listeners": "6670",
"mbid": "a454e56f-4e88-418f-aa70-b12ed0a614c4",
"url": "https://www.last.fm/music/Yumi+Matsuzawa",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/5d4d1f964fc242a487192d3904e4a182.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/5d4d1f964fc242a487192d3904e4a182.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/5d4d1f964fc242a487192d3904e4a182.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/5d4d1f964fc242a487192d3904e4a182.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/5d4d1f964fc242a487192d3904e4a182.png",
"size": "mega"
}
]
},
{
"name": "Yuliet Topaz",
"listeners": "22576",
"mbid": "62bab63f-50e1-430f-8727-02a09396af61",
"url": "https://www.last.fm/music/Yuliet+Topaz",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/b4d53a4a517c422e9c9c586960b6be5c.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/b4d53a4a517c422e9c9c586960b6be5c.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/b4d53a4a517c422e9c9c586960b6be5c.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/b4d53a4a517c422e9c9c586960b6be5c.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/b4d53a4a517c422e9c9c586960b6be5c.png",
"size": "mega"
}
]
},
{
"name": "Yukihiro Fukutomi",
"listeners": "23720",
"mbid": "5ae575a5-3c2d-4cbb-9fe5-be806d5946ae",
"url": "https://www.last.fm/music/Yukihiro+Fukutomi",
"streamable": "0",
"image": [
{
"#text": "https://lastfm-img2.akamaized.net/i/u/34s/b6080784f1c04191bd8ee09138ddb883.png",
"size": "small"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/64s/b6080784f1c04191bd8ee09138ddb883.png",
"size": "medium"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/174s/b6080784f1c04191bd8ee09138ddb883.png",
"size": "large"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/b6080784f1c04191bd8ee09138ddb883.png",
"size": "extralarge"
},
{
"#text": "https://lastfm-img2.akamaized.net/i/u/300x300/b6080784f1c04191bd8ee09138ddb883.png",
"size": "mega"
}
]
}
]
},
"@attr": {
"for": "Yui"
}
}
}
"""

//MARK: Artist Details Data
let artistDetailsJson = """
{"artist":{"name":"Michael Bublé","mbid":"611700cf-27f0-4dc9-ae80-c513a767853e","url":"https://www.last.fm/music/Michael+Bubl%C3%A9","image":[{"#text":"https://lastfm-img2.akamaized.net/i/u/34s/0f233966a7ea4683872b10bd509126cc.png","size":"small"},{"#text":"https://lastfm-img2.akamaized.net/i/u/64s/0f233966a7ea4683872b10bd509126cc.png","size":"medium"},{"#text":"https://lastfm-img2.akamaized.net/i/u/174s/0f233966a7ea4683872b10bd509126cc.png","size":"large"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/0f233966a7ea4683872b10bd509126cc.png","size":"extralarge"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/0f233966a7ea4683872b10bd509126cc.png","size":"mega"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/0f233966a7ea4683872b10bd509126cc.png","size":""}],"streamable":"0","ontour":"0","stats":{"listeners":"1747747","playcount":"48757363"},"similar":{"artist":[{"name":"Harry Connick, Jr.","url":"https://www.last.fm/music/Harry+Connick,+Jr.","image":[{"#text":"https://lastfm-img2.akamaized.net/i/u/34s/85d67dbe4fa740e890e7bf4749a3161c.png","size":"small"},{"#text":"https://lastfm-img2.akamaized.net/i/u/64s/85d67dbe4fa740e890e7bf4749a3161c.png","size":"medium"},{"#text":"https://lastfm-img2.akamaized.net/i/u/174s/85d67dbe4fa740e890e7bf4749a3161c.png","size":"large"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/85d67dbe4fa740e890e7bf4749a3161c.png","size":"extralarge"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/85d67dbe4fa740e890e7bf4749a3161c.png","size":"mega"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/85d67dbe4fa740e890e7bf4749a3161c.png","size":""}]},{"name":"Bing Crosby","url":"https://www.last.fm/music/Bing+Crosby","image":[{"#text":"https://lastfm-img2.akamaized.net/i/u/34s/88a8a2245baf4a0d9f0f1a393c07754a.png","size":"small"},{"#text":"https://lastfm-img2.akamaized.net/i/u/64s/88a8a2245baf4a0d9f0f1a393c07754a.png","size":"medium"},{"#text":"https://lastfm-img2.akamaized.net/i/u/174s/88a8a2245baf4a0d9f0f1a393c07754a.png","size":"large"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/88a8a2245baf4a0d9f0f1a393c07754a.png","size":"extralarge"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/88a8a2245baf4a0d9f0f1a393c07754a.png","size":"mega"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/88a8a2245baf4a0d9f0f1a393c07754a.png","size":""}]},{"name":"Tony Bennett","url":"https://www.last.fm/music/Tony+Bennett","image":[{"#text":"https://lastfm-img2.akamaized.net/i/u/34s/813fc807c13f4e958d164e65aa725ee2.png","size":"small"},{"#text":"https://lastfm-img2.akamaized.net/i/u/64s/813fc807c13f4e958d164e65aa725ee2.png","size":"medium"},{"#text":"https://lastfm-img2.akamaized.net/i/u/174s/813fc807c13f4e958d164e65aa725ee2.png","size":"large"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/813fc807c13f4e958d164e65aa725ee2.png","size":"extralarge"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/813fc807c13f4e958d164e65aa725ee2.png","size":"mega"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/813fc807c13f4e958d164e65aa725ee2.png","size":""}]},{"name":"Dean Martin","url":"https://www.last.fm/music/Dean+Martin","image":[{"#text":"https://lastfm-img2.akamaized.net/i/u/34s/44d557bbaaa84c3c98ebe83893c088c6.png","size":"small"},{"#text":"https://lastfm-img2.akamaized.net/i/u/64s/44d557bbaaa84c3c98ebe83893c088c6.png","size":"medium"},{"#text":"https://lastfm-img2.akamaized.net/i/u/174s/44d557bbaaa84c3c98ebe83893c088c6.png","size":"large"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/44d557bbaaa84c3c98ebe83893c088c6.png","size":"extralarge"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/44d557bbaaa84c3c98ebe83893c088c6.png","size":"mega"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/44d557bbaaa84c3c98ebe83893c088c6.png","size":""}]},{"name":"Diana Krall","url":"https://www.last.fm/music/Diana+Krall","image":[{"#text":"https://lastfm-img2.akamaized.net/i/u/34s/ccc873ec16b643689da347384e8e4703.png","size":"small"},{"#text":"https://lastfm-img2.akamaized.net/i/u/64s/ccc873ec16b643689da347384e8e4703.png","size":"medium"},{"#text":"https://lastfm-img2.akamaized.net/i/u/174s/ccc873ec16b643689da347384e8e4703.png","size":"large"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/ccc873ec16b643689da347384e8e4703.png","size":"extralarge"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/ccc873ec16b643689da347384e8e4703.png","size":"mega"},{"#text":"https://lastfm-img2.akamaized.net/i/u/300x300/ccc873ec16b643689da347384e8e4703.png","size":""}]}]},"tags":{"tag":[{"name":"jazz","url":"https://www.last.fm/tag/jazz"},{"name":"swing","url":"https://www.last.fm/tag/swing"},{"name":"easy listening","url":"https://www.last.fm/tag/easy+listening"},{"name":"pop","url":"https://www.last.fm/tag/pop"},{"name":"Canadian","url":"https://www.last.fm/tag/Canadian"}]},"bio":{"links":{"link":{"#text":"","rel":"original","href":"https://last.fm/music/Michael+Bubl%C3%A9/+wiki"}},"published":"06 Mar 2006, 17:38","summary":"Michael Steven Bublé (born 9 September 1975 in Burnaby, British Columbia) is a Canadian singer and actor. He has won several awards, including three Grammy Awards and multiple Juno Awards. His first album reached the top ten in the United Kingdom and his home country of Canada. He found worldwide commercial success with his 2005 album It's Time, and his 2007 album Call Me Irresponsible was an even bigger success, reaching number one on the Canadian Albums Chart, the U. <a href=\"https://www.last.fm/music/Michael+Bubl%C3%A9\">Read more on Last.fm</a>","content":"Michael Steven Bublé (born 9 September 1975 in Burnaby, British Columbia) is a Canadian singer and actor. He has won several awards, including three Grammy Awards and multiple Juno Awards. His first album reached the top ten in the United Kingdom and his home country of Canada. He found worldwide commercial success with his 2005 album It's Time, and his 2007 album Call Me Irresponsible was an even bigger success, reaching number one on the Canadian Albums Chart, the U.S. Billboard 200 chart, the Australian ARIA Albums Chart and the European charts. Bublé's fifth studio album, Christmas, was released on October 24, 2011 in the United Kingdom] and October 25, 2011 in the United States. The Cold December Night Songfacts states it was produced by David Foster, Bob Rock and Humberto Gatica. The album was recorded primarily at Capitol Recording Studios in Hollywood and The Warehouse Studios in Vancouver during July.\n\nMichael Bublé’s introduction to the music of the swing era came to him through his grandfather, who filled his grandson’s ears with the sounds of The Mills Brothers, Ella Fitzgerald, Frank Sinatra, and others. As Bublé eagerly absorbed the recordings, he began to realize that he wanted to be a singer and that this style of music, virtually foreign to his own generation, was what he wanted to perform.\n\nWith his grandfather’s assistance, Bublé soon learned a whole catalog of tunes and gained experience and exposure by singing as a guest with several local bands. While still in his teen years, he won the Canadian Youth Talent Search, released several independent albums, and performed in a musical review titled Swing that traveled across the U.S. It wasn’t long before Bublé was introduced to Grammy-winning producer David Foster during a famous Canadian wedding of Brian Mulroney’s daughter Caroline Mulroney. He later signed his first major recording contract with Reprise Records after that encounter.\n\nThe two Canadians began work on a debut album that would incorporate Bublé’s aptitude for pop standards into songs that spanned several decades. His self-titled debut disc was released in early 2003, and featured jazzy takes on old standards like “Fever” and “The Way You Look Tonight” as well as newer classics like “Moondance” and “How Can You Mend A Broken Heart”.\n\nHe finished off 2003 with an EP of holiday material, Let It Snow, and began 2004 with the live CD/DVD set Come Fly With Me. In 2005, It’s Time was a number one hit in Canada, Japan, Italy, and Australia, and made the top ten of both the UK and US. Later that year he released the live album Caught in the Act. More recently, Michael received a 2010 Grammy Award for 'Best Traditional Pop Vocal Album' for 'Michael Bublé Meets Madison Square Garden. <a href=\"https://www.last.fm/music/Michael+Bubl%C3%A9\">Read more on Last.fm</a>. User-contributed text is available under the Creative Commons By-SA License; additional terms may apply."}}}
"""

//MARK: Artist Bio
let bioJson = """
{"bio":{"links":{"link":{"#text":"","rel":"original","href":"https://last.fm/music/Michael+Bubl%C3%A9/+wiki"}},"published":"06 Mar 2006, 17:38","summary":"Michael Steven Bublé (born 9 September 1975 in Burnaby, British Columbia) is a Canadian singer and actor. He has won several awards, including three Grammy Awards and multiple Juno Awards. His first album reached the top ten in the United Kingdom and his home country of Canada. He found worldwide commercial success with his 2005 album It's Time, and his 2007 album Call Me Irresponsible was an even bigger success, reaching number one on the Canadian Albums Chart, the U. <a href=\"https://www.last.fm/music/Michael+Bubl%C3%A9\">Read more on Last.fm</a>","content":"Michael Steven Bublé (born 9 September 1975 in Burnaby, British Columbia) is a Canadian singer and actor. He has won several awards, including three Grammy Awards and multiple Juno Awards. His first album reached the top ten in the United Kingdom and his home country of Canada. He found worldwide commercial success with his 2005 album It's Time, and his 2007 album Call Me Irresponsible was an even bigger success, reaching number one on the Canadian Albums Chart, the U.S. Billboard 200 chart, the Australian ARIA Albums Chart and the European charts. Bublé's fifth studio album, Christmas, was released on October 24, 2011 in the United Kingdom] and October 25, 2011 in the United States. The Cold December Night Songfacts states it was produced by David Foster, Bob Rock and Humberto Gatica. The album was recorded primarily at Capitol Recording Studios in Hollywood and The Warehouse Studios in Vancouver during July.\n\nMichael Bublé’s introduction to the music of the swing era came to him through his grandfather, who filled his grandson’s ears with the sounds of The Mills Brothers, Ella Fitzgerald, Frank Sinatra, and others. As Bublé eagerly absorbed the recordings, he began to realize that he wanted to be a singer and that this style of music, virtually foreign to his own generation, was what he wanted to perform.\n\nWith his grandfather’s assistance, Bublé soon learned a whole catalog of tunes and gained experience and exposure by singing as a guest with several local bands. While still in his teen years, he won the Canadian Youth Talent Search, released several independent albums, and performed in a musical review titled Swing that traveled across the U.S. It wasn’t long before Bublé was introduced to Grammy-winning producer David Foster during a famous Canadian wedding of Brian Mulroney’s daughter Caroline Mulroney. He later signed his first major recording contract with Reprise Records after that encounter.\n\nThe two Canadians began work on a debut album that would incorporate Bublé’s aptitude for pop standards into songs that spanned several decades. His self-titled debut disc was released in early 2003, and featured jazzy takes on old standards like “Fever” and “The Way You Look Tonight” as well as newer classics like “Moondance” and “How Can You Mend A Broken Heart”.\n\nHe finished off 2003 with an EP of holiday material, Let It Snow, and began 2004 with the live CD/DVD set Come Fly With Me. In 2005, It’s Time was a number one hit in Canada, Japan, Italy, and Australia, and made the top ten of both the UK and US. Later that year he released the live album Caught in the Act. More recently, Michael received a 2010 Grammy Award for 'Best Traditional Pop Vocal Album' for 'Michael Bublé Meets Madison Square Garden. <a href=\"https://www.last.fm/music/Michael+Bubl%C3%A9\">Read more on Last.fm</a>. User-contributed text is available under the Creative Commons By-SA License; additional terms may apply."}}
"""


let artistDetailsData = String(htmlEncodedString:artistDetailsJson)?.data(using: .utf8)!
let bioData = String(htmlEncodedString: bioJson)?.data(using: .utf8)!
let artistSearchResultsData = String(htmlEncodedString: artistSearchResults)?.data(using: .utf8)!

let summary = """
Michael Steven Bublé (born 9 September 1975 in Burnaby, British Columbia) is a Canadian singer and actor. He has won several awards, including three Grammy Awards and multiple Juno Awards. His first album reached the top ten in the United Kingdom and his home country of Canada. He found worldwide commercial success with his 2005 album It\'s Time, and his 2007 album Call Me Irresponsible was an even bigger success, reaching number one on the Canadian Albums Chart, the U. Read more on Last.fm
"""
