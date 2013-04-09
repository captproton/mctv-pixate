class BasicsController < UIViewController
  def viewDidLoad
    margin = 10
    @label = UILabel.new
    @label.font = UIFont.systemFontOfSize(30)
    @label.text = 'Tap the button'
    @label.textAlignment = UITextAlignmentCenter
    @label.textColor = UIColor.whiteColor
    @label.backgroundColor = UIColor.clearColor
    @label.frame = [[margin, 100], [view.frame.size.width - margin * 2, 40]]
    view.addSubview(@label)

    @button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @button.setTitle('Start', forState:UIControlStateNormal)
    @button.addTarget(self, action:'tapped', forControlEvents:UIControlEventTouchUpInside)
    @button.frame = [[margin, 160], [view.frame.size.width - margin * 2, 40]]
    view.addSubview(@button)

    @progress = UIProgressView.alloc.initWithProgressViewStyle(UIProgressViewStyleDefault)
    @progress.frame = [[margin, 280], [view.frame.size.width - margin * 2, 40]]
    view.styleId = "basics-view"
    view.addSubview(@progress)
  end

  private
  def tapped
    @progress.setProgress(@progress.progress + 0.1)
    @label.text = "You tapped the button"
  end
end