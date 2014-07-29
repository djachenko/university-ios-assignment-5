#import "AppDelegate.h"

#import "RecursiveVC.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    self.window.backgroundColor = [UIColor whiteColor];
    
    UITabBarController *rootController = [[UITabBarController alloc] init];
	rootController.tabBar.translucent = NO;
    
    UINavigationController *first = [[UINavigationController alloc] initWithRootViewController:[[RecursiveVC alloc] initWithNibName:@"View" bundle:[NSBundle mainBundle] name:@"First"]];
    first.navigationBar.translucent = NO;

	UINavigationController *second = [[UINavigationController alloc] initWithRootViewController:[[RecursiveVC alloc] initWithNibName:@"View" bundle:[NSBundle mainBundle] name:@"Second"]];
	second.navigationBar.translucent = NO;

    UIViewController *third = [[UIViewController alloc] init];


	rootController.viewControllers = @[first, second, third];
    
    self.window.rootViewController = rootController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end