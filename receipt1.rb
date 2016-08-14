class Receipt



  def initialize(list_of_total_items)
    @list_of_total_items = list_of_total_items
  end

  def print_receipt
  @list_of_total_items.each do |item,price|
    puts " #{item} for $ #{price} "
  end
end

end
