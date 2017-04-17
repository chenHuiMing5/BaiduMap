//
//  AppDelegate.h
//  BaiduTest
//
//  Created by  on 2017/2/15.
//  Copyright © 2017年 . All rights reserved.
//

#import <UIKit/UIKit.h>
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    BMKMapManager* _mapManager;

}
@property (strong, nonatomic) UIWindow *window;

@end

