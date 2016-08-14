class Receipt



  def initialize(list_items)
    @list_items = list_items
  end

  def print_receipt
  @list_items.each do |item,price,quantity|
    puts " #{quantity} #{item} #{price} "
  end
end

end
