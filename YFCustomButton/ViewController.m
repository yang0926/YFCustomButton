//
//  ViewController.m
//  YFCustomButton
//
//  Created by yangbigbig on 16/8/11.
//  Copyright © 2016年 yangbigbig. All rights reserved.
//

#import "ViewController.h"
#import "YFCustomButton.h"
#import "UIButton+ImageTitleSpacing.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 

//    YFCustomButton * button = [YFCustomButton buttonWithType:UIButtonTypeCustom];
////    button.yftype = YFtButtonTypeBottom;
//    
//    button.backgroundColor = [UIColor blackColor];
//    
//    button.frame = CGRectMake(100, 100, 100, 80);
//    [button setImage:[UIImage imageNamed:@"AppIcon60x60@3x"] forState:UIControlStateNormal];
//    [button setTitle:@"我是文字" forState:UIControlStateNormal];
//    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
//    CGFloat space = 20;
//    [button layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleLeft
//                                    imageTitleSpace:space];
//    [self.view addSubview:button];
    
    CGFloat margin = (self.view.frame.size.width ) / 2;
    
    for (int i = 0; i < 4; i++) {
     
     YFCustomButton * button = [YFCustomButton buttonWithType:UIButtonTypeCustom];
     button.yftype = YFtButtonTypeBottom;
        button.layer.cornerRadius = 5;
        button.layer.masksToBounds = YES;
     button.backgroundColor = [UIColor blackColor];
     if (i == 1) {
         button.backgroundColor = [UIColor yellowColor];
     }else if(i == 2){
         button.backgroundColor = [UIColor grayColor];
     }
    
        
     button.frame = CGRectMake( margin * (i % 2), 40 + (margin+20 ) * (i / 2), margin, margin +20 );
     [button setImage:[UIImage imageNamed:@"AppIcon60x60@3x"] forState:UIControlStateNormal];
     [button setTitle:@"我是文字" forState:UIControlStateNormal];
     [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    CGFloat space = 20;
//    [button layoutButtonWithEdgeInsetsStyle:MKButtonEdgeInsetsStyleTop
//                                imageTitleSpace:space];
        [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
     [self.view addSubview:button];
  
        
    }
}

- (void)click{
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
