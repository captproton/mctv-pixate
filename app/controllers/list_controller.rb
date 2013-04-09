class ListController < UITableViewController
  # def init
  #   if super
  #     self.tabBarItem = UITabBarItem.alloc.initWithTitle('List', image:UIImage.imageNamed('list.png'), tag:1)
  #   end
  #   self
  # end

  def viewDidLoad
    @items = (1..99).map{|n| "item #{n}"}
    # view.dataSource = (1..99).map{|n| "item #{n}"}
  end

  def tableView(tableView, numberOfRowsInSection:section)
    @items.size
  end

  CELLID = 'CellIdentifier'
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(CELLID) || begin
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CELLID)
      cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton
      cell
    end

    item = @items[indexPath.row]
    cell.textLabel.text = item
    cell
  end
end