//
//  UIDevice+ZHAreaHeight.m
//  
//
//  Created by Mr.Zhang on 2022/3/14.
//

#import "UIDevice+ZHAreaHeight.h"

@implementation UIDevice (ZHAreaHeight)
#pragma mark ---- 顶部安全区高度
+ (CGFloat)zh_TopSafetyZoneHeight {
    if (@available(iOS 13.0, *)) {
        NSSet *set = [UIApplication sharedApplication].connectedScenes;
        UIWindowScene *windowScene = [set anyObject];
        UIWindow *window = windowScene.windows.firstObject;
        return window.safeAreaInsets.top;
    } else if (@available(iOS 11.0, *)) {
        UIWindow *window = [UIApplication sharedApplication].windows.firstObject;
        return window.safeAreaInsets.top;
    }
    return 0;
}

#pragma mark ---- 底部安全区高度
+ (CGFloat)zh_BottomSafetyZoneHeight {
    if (@available(iOS 13.0, *)) {
        NSSet *set = [UIApplication sharedApplication].connectedScenes;
        UIWindowScene *windowScene = [set anyObject];
        UIWindow *window = windowScene.windows.firstObject;
        return window.safeAreaInsets.bottom;
    } else if (@available(iOS 11.0, *)) {
        UIWindow *window = [UIApplication sharedApplication].windows.firstObject;
        return window.safeAreaInsets.bottom;
    }
    return 0;
}


#pragma mark ---- 顶部状态栏高度（包括安全区）
+ (CGFloat)zh_TopStatusBarSafeZoneHeight {
    if (@available(iOS 13.0, *)) {
        NSSet *set = [UIApplication sharedApplication].connectedScenes;
        UIWindowScene *windowScene = [set anyObject];
        UIStatusBarManager *statusBarManager = windowScene.statusBarManager;
        return statusBarManager.statusBarFrame.size.height;
    } else {
        return [UIApplication sharedApplication].statusBarFrame.size.height;
    }
}

#pragma mark ---- 导航栏高度
+ (CGFloat)zh_NavigationbarHeight {
    return 44.0f;
}

#pragma mark ---- 状态栏+导航栏的高度
+ (CGFloat)zh_StatusBarNavigationBarHeight {
    return [UIDevice zh_TopStatusBarSafeZoneHeight] + [UIDevice zh_NavigationbarHeight];
}

#pragma mark ---- 底部导航栏高度
+ (CGFloat)zh_BottomNavigationBarHeight {
    return 49.0f;
}

#pragma mark ---- 底部导航栏高度（包括安全区）
+ (CGFloat)zh_BottomNavigationBarSafeZoneHeight {
    return [UIDevice zh_BottomNavigationBarHeight] + [UIDevice zh_BottomSafetyZoneHeight];
}
@end
