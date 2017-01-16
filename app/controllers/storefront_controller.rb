class StorefrontController < ApplicationController

  def all_items
    @ads = Ad.all
  end

# Change to an case statement that checks(against numbers 1-8) an instance of an ad and its category_id from the Ad table (ad.category_id)
  def items_by_category
    @category = Category.find(params[:cat_id].to_i)
    @ads = Ad.all
    @ads_by_cat = []
      @ads.each do |ad|
         if ad.category_id == params[:cat_id].to_i
          @ads_by_cat.push(ad)
        end

    end
  end



end
