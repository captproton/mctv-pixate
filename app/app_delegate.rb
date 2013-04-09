class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    tabbar = UITabBarController.alloc.init
    tabbar.viewControllers = [BasicsController.alloc.init, ListController.alloc.init]
    tabbar.selectedIndex = 0
    @window.rootViewController = tabbar #UINavigationController.alloc.initWithRootViewController(tabbar)
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible

    PXStylesheet.currentApplicationStylesheet.monitorChanges = true
    puts "Find the css at #{PXStylesheet.currentApplicationStylesheet.filePath}"

    true
  end
end
