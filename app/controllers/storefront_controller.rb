class StorefrontController < ApplicationController

  def all_items
    @ads = Ad.all
  end

  def items_by_category
  end

  def items_by_price
  end
end
