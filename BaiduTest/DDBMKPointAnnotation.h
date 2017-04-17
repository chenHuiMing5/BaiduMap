//
//  DDBMKPointAnnotation.h
//  DingdingTravel_IOS
//
//  Created by aiqishop on 16/8/17.
//  Copyright © 2016年 RanQingwen. All rights reserved.
//

//baidu
#import <BaiduMapAPI_Map/BMKMapComponent.h>

typedef enum {
    DDBMKPointAnnotationUser = 0,             //用户当前位置
    DDBMKPointAnnotationStart,               //起始点
    DDBMKPointAnnotationPass,    //经过点
    DDBMKPointAnnotationEnd,    //终点
    DDBMKPointAnnotationSearch,//搜索点
    DDBMKPointAnnotationValueSearch,//搜索点
    DDBMKPointAnnotationParkSearch,//停车位点
    DDBMKPointAnnotationOther,    //其他
} DDBMKPointAnnotationMode;

@interface DDBMKPointAnnotation : BMKPointAnnotation

@property (nonatomic) DDBMKPointAnnotationMode pointAnnotationMode;

@property (nonatomic, assign) NSInteger tag;

@end
