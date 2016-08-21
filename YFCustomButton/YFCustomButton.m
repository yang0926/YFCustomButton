//
//  YFCustomButton.m
//  YFCustomButton
//
//  Created by yangbigbig on 16/8/11.
//  Copyright © 2016年 yangbigbig. All rights reserved.
//

#import "YFCustomButton.h"

@implementation YFCustomButton

- (void)setYftype:(YFButtonType)yftype{
    
    _yftype = yftype;
    
    if (yftype != YFButtonTypeNomal) {
        
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    
    if (self.yftype == YFButtonTypeLeft) {
        
        CGFloat interval = CGRectGetHeight(contentRect) / 8.0;
        
        //设置图片的宽高为图片的3/4
        CGFloat imageH = CGRectGetHeight(contentRect) - 2*interval;
        CGRect rect = CGRectMake(CGRectGetWidth(contentRect) - imageH - interval, interval, imageH, imageH);
        
        return rect;
        
    }else if (self.yftype == YFtButtonTypeBottom) {
        
        CGFloat inteval = CGRectGetWidth(contentRect) / 6;
//        inteval = MIN(inteval, 6);
        
        
        CGFloat imageW = CGRectGetWidth(contentRect) - 2 * inteval;
        
        CGRect rect = CGRectMake(inteval, inteval / 3, imageW, imageW);
        
        return rect;
    } else {
        return [super imageRectForContentRect:contentRect];
    }
    
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    
    if (self.yftype == YFButtonTypeLeft) {
        CGFloat inteval = CGRectGetHeight(contentRect)/8.0;
        //设置图片的宽高为button高度的3/4;
        CGFloat imageH = CGRectGetHeight(contentRect) - 2 * inteval;
        
        CGRect rect = CGRectMake(inteval, inteval, CGRectGetWidth(contentRect) - imageH - 2*inteval, CGRectGetHeight(contentRect) - 2*inteval);
        
        return rect;
    } else if (self.yftype == YFtButtonTypeBottom) {
        
        CGFloat inteval = CGRectGetWidth(contentRect)/6.0;
//        inteval = MIN(inteval, 6);
        
        
        CGFloat imageW = CGRectGetWidth(contentRect) - 2 * inteval;
        
        CGRect rect = CGRectMake(0, imageW + inteval, CGRectGetWidth(contentRect) , CGRectGetHeight(contentRect) - (inteval  + imageW));
        
        return rect;
    } else {
        return [super titleRectForContentRect:contentRect];
    }
}


@end
