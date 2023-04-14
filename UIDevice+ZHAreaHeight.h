//
//  UIDevice+ZHAreaHeight.h
//  
//
//  Created by Mr.Zhang on 2022/3/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIDevice (ZHAreaHeight)
/// 顶部安全区高度
+ (CGFloat)zh_TopSafetyZoneHeight;

/// 顶部状态栏+安全区高度
+ (CGFloat)zh_TopStatusBarSafeZoneHeight;

/// 顶部导航栏高度
+ (CGFloat)zh_NavigationbarHeight;

/// 状态栏+导航栏的高度
+ (CGFloat)zh_StatusBarNavigationBarHeight;

/// 底部安全区高度
+ (CGFloat)zh_BottomSafetyZoneHeight;

/// 底部导航栏高度
+ (CGFloat)zh_BottomNavigationBarHeight;

/// 底部导航栏+安全区高度
+ (CGFloat)zh_BottomNavigationBarSafeZoneHeight;
@end

NS_ASSUME_NONNULL_END
