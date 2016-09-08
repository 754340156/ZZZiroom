//
//  Interfaces.h
//  ZZZiroom
//
//  Created by 赵哲 on 16/8/9.
//  Copyright © 2016年 赵哲. All rights reserved.
//

#ifndef Interfaces_h
#define Interfaces_h


//友家

//总体----拼接sign和timestamp
1.@"http://interfaces.ziroom.com/index.php?_p=api_mobile&_a=get_index_marge&city_code=110000&sign=bee5d9969e28809505cf610e4daf7691&timestamp=1470746203"
//推荐房源----拼接city_code,id,sign timestamp uid(id不同,sign和时间戳和上面不同)
2.@"http://interfaces.ziroom.com/?_p=api_mobile&_a=getLunBoDatas&city_code=110000&id=2260&sign=defbcfad2dfa566a7dc2dccf0b751c3a&timestamp=1470746599&uid=1"
//精彩活动---
3.@"http://interfaces.ziroom.com/?_p=api_mobile&_a=getLunBoDatas&city_code=110000&id=2257&sign=defbcfad2dfa566a7dc2dccf0b751c3a&timestamp=1470746599&uid=1"
//社区活动---
4.@"http://interfaces.ziroom.com/?_p=api_mobile&_a=getLunBoDatas&city_code=110000&id=2271&sign=defbcfad2dfa566a7dc2dccf0b751c3a&timestamp=1470746599&uid=1"



#endif /* Interfaces_h */
