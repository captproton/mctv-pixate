class BasicsController < UIViewController
  def init
    super.tap do |me|
      self.tabBarItem = UITabBarItem.alloc.initWithTitle(nil, image:nil, tag:0)
      self.tabBarItem.styleId = "basic-tab-item"
    end
  end

  def viewDidLoad
    margin = 10
    @label = UILabel.new
    @label.font = UIFont.systemFontOfSize(30)
    @label.text = 'Tap the button'
    @label.textAlignment = UITextAlignmentCenter
    @label.textColor = UIColor.whiteColor
    @label.backgroundColor = UIColor.clearColor
    @label.frame = [[margin, 100], [view.frame.size.width - margin * 2, 40]]
    @label.styleClass = 'text'
    view.addSubview(@label)

    @button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button.setTitle('Start', forState:UIControlStateNormal)
    @button.addTarget(self, action:'tapped', forControlEvents:UIControlEventTouchUpInside)
    @button.frame = [[margin, 160], [view.frame.size.width - margin * 2, 40]]
    view.addSubview(@button)

    view.styleId = "basics-view"
  end

  private
  def tapped
    @label.text = "You tapped the button"
  end
end