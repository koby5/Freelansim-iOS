//
//  AppDelegate.m
//  Freelansim
//
//  Created by Valeriy Zinchenko on 13.12.12.
//  Copyright (c) 2012 vexadev. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
    {
        self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController_iPhone" bundle:nil] autorelease];
        [self customizeiPhoneTheme];
        NSLog(@"comiit");
    }
    
    else
    {
        self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController_iPad" bundle:nil] autorelease];
    }
    
    self.navigationController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    self.window.rootViewController = self.navigationController;
    
    [self.window makeKeyAndVisible];
    return YES;
}


-(void)customizeiPhoneTheme
{
    [[UIApplication sharedApplication]
     setStatusBarStyle:UIStatusBarStyleBlackOpaque animated:NO];
    
    UIImage *navBarImage = [[UIImage imageNamed:@"menubar.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(5, 15, 5, 15)];    
    [[UINavigationBar appearance] setBackgroundImage:navBarImage forBarMetrics:UIBarMetricsDefault];  
    UIImage *barButton = [[UIImage imageNamed:@"menubar-button.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 4, 0, 4)];
    [[UIBarButtonItem appearance] setBackgroundImage:barButton forState:UIControlStateNormal
                                          barMetrics:UIBarMetricsDefault];
    UIImage *backButton = [[UIImage imageNamed:@"back.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 14, 0, 4)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButton forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
    
    /*UIImage *minImage = [UIImage imageNamed:@"ipad-slider-fill"];
    UIImage *maxImage = [UIImage imageNamed:@"ipad-slider-track.png"];
    UIImage *thumbImage = [UIImage imageNamed:@"ipad-slider-handle.png"];    
    [[UISlider appearance] setMaximumTrackImage:maxImage forState:UIControlStateNormal];
    [[UISlider appearance] setMinimumTrackImage:minImage forState:UIControlStateNormal];
    [[UISlider appearance] setThumbImage:thumbImage forState:UIControlStateNormal];
    [[UISlider appearance] setThumbImage:thumbImage forState:UIControlStateHighlighted];*/
    
    UIImage* tabBarBackground = [UIImage imageNamed:@"tabbar.png"];
    [[UITabBar appearance] setBackgroundImage:tabBarBackground];  
    [[UITabBar appearance] setSelectionIndicatorImage:[UIImage imageNamed:@"tabbar-active.png"]];
    
    [self ConfigureiPhoneTabBar];
}

-(void)ConfigureiPhoneTabBar
{
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
	
    UIViewController *controller1 = [[tabBarController viewControllers] objectAtIndex:0];
    [self configureTabBarItemWithImageName:@"tab-icon1.png" andText:@"Elements" forViewController:controller1];
    
    
    UIViewController *controller2 = [[tabBarController viewControllers] objectAtIndex:1];
    [self configureTabBarItemWithImageName:@"tab-icon2.png" andText:@"Elements" forViewController:controller2];
    
    
    UIViewController *controller3 = [[tabBarController viewControllers] objectAtIndex:2];
    [self configureTabBarItemWithImageName:@"tab-icon3.png" andText:@"Other" forViewController:controller3];
    
    
    UIViewController *controller4 = [[tabBarController viewControllers] objectAtIndex:3];
    [self configureTabBarItemWithImageName:@"tab-icon4.png" andText:@"Other" forViewController:controller4];
    
}

-(void)configureTabBarItemWithImageName:(NSString*)imageName andText:(NSString *)itemText forViewController:(UIViewController *)viewController
{
    UIImage* icon1 = [UIImage imageNamed:imageName];
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:itemText image:icon1 tag:0];
    [item1 setFinishedSelectedImage:icon1 withFinishedUnselectedImage:icon1];
    
    [viewController setTabBarItem:item1];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
