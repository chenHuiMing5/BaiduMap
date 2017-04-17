//
//  ViewController.m
//  BaiduTest
//
//  Created by  on 2017/2/15.
//  Copyright © 2017年 . All rights reserved.
//

#import "ViewController.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import "DDBMKPointAnnotation.h"


#import <BaiduMapAPI_Map/BMKMapComponent.h>

@interface ViewController ()<BMKMapViewDelegate>
@property (strong, nonatomic)  BMKMapView *mapView ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.mapView= [[BMKMapView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:self.mapView];
    
//    BMKCoordinateRegion region ;
//    region.span.latitudeDelta = 0.0135f;
//    region.span.longitudeDelta = 0.0135f;
//    
//    [self.mapView setRegion:region animated:YES];
//    self.mapView.delegate= self;
//    self.mapView.showsUserLocation= NO;
//    self.mapView.userTrackingMode = BMKUserTrackingModeFollow;
//    self.mapView.mapType = BMKMapTypeStandard;
//    self.mapView.showsUserLocation = YES;
//    self.mapView.buildingsEnabled = YES;
    
//    BMKLocationViewDisplayParam *displayParam = [[BMKLocationViewDisplayParam alloc] init];
//    displayParam.isRotateAngleValid = YES;
//    displayParam.isAccuracyCircleShow = false;
//    displayParam.locationViewOffsetX = 0;
//    displayParam.locationViewOffsetY = 0;
//    [self.mapView updateLocationViewWithParam:displayParam];
//    
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
//- (BMKAnnotationView *)mapView:(BMKMapView *)mapView viewForAnnotation:(id <BMKAnnotation>)annotation
//{
//    if ([annotation isKindOfClass:[DDBMKPointAnnotation class]]) {
//        DDBMKPointAnnotation* ddPoint=annotation;
//        if(ddPoint.pointAnnotationMode==DDBMKPointAnnotationSearch){
//            //            BMKPinAnnotationView *newAnnotationView = [[BMKPinAnnotationView alloc] initWithAnnotation:ddPoint reuseIdentifier:@"myAnnotation_search"];
//            BMKAnnotationView *newAnnotationView =[[BMKAnnotationView alloc] initWithAnnotation:ddPoint reuseIdentifier:@"myAnnotation_search"];
//            newAnnotationView.image = [UIImage imageNamed:@"search_poi_annotation"];
//            newAnnotationView.canShowCallout=NO;
//            
//            return newAnnotationView;
//        }
//        else if(ddPoint.pointAnnotationMode==DDBMKPointAnnotationValueSearch){
//            BMKAnnotationView *newAnnotationView = [[BMKAnnotationView alloc] initWithAnnotation:ddPoint reuseIdentifier:@"myAnnotation_searchValue"];
//            newAnnotationView.image = [UIImage imageNamed:@"fixed_point_one_normal"];
//            //            newAnnotationView.animatesDrop = YES;// 设置该标注点动画显示
//            newAnnotationView.canShowCallout=NO;
//            
//            return newAnnotationView;
//        }
//        else if (ddPoint.pointAnnotationMode==DDBMKPointAnnotationStart){
//            BMKPinAnnotationView *newAnnotationView = [[BMKPinAnnotationView alloc] initWithAnnotation:ddPoint reuseIdentifier:@"myAnnotation_start"];
//            newAnnotationView.image = [UIImage imageNamed:@"ic_marker_start"];
//            newAnnotationView.animatesDrop = NO;// 设置该标注点动画显示
//            
//            return newAnnotationView;
//        }
//        else if (ddPoint.pointAnnotationMode==DDBMKPointAnnotationEnd){
//            BMKPinAnnotationView *newAnnotationView = [[BMKPinAnnotationView alloc] initWithAnnotation:ddPoint reuseIdentifier:@"myAnnotation_end"];
//            newAnnotationView.image = [UIImage imageNamed:@"ic_marker_end"];
//            newAnnotationView.animatesDrop = NO;// 设置该标注点动画显示
//            
//            return newAnnotationView;
//        }
//        else if (ddPoint.pointAnnotationMode==DDBMKPointAnnotationParkSearch){
//            BMKAnnotationView *newAnnotationView = [[BMKAnnotationView alloc] initWithAnnotation:ddPoint reuseIdentifier:@"myAnnotation_park"];
//            newAnnotationView.image = [UIImage imageNamed:@"bike_park_location"];
//            newAnnotationView.canShowCallout=NO;
//            
//            return newAnnotationView;
//        }
//    }
//    
//    return nil;
//}
-(void)viewWillAppear:(BOOL)animated
{
    [_mapView viewWillAppear];
    _mapView.delegate = self;
}
-(void)viewWillDisappear:(BOOL)animated
{
    [_mapView viewWillDisappear];
    _mapView.delegate = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
