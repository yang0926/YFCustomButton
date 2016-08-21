//
//  YFCustomButton.h
//  YFCustomButton
//
//  Created by yangbigbig on 16/8/11.
//  Copyright © 2016年 yangbigbig. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger,YFButtonType) {
    YFButtonTypeNomal  = 0,//默认
    YFButtonTypeLeft   = 1,//标题在左
    YFtButtonTypeBottom = 2,//标题在下
    
};
@interface YFCustomButton : UIButton

@property (nonatomic, assign) YFButtonType yftype;

@end
