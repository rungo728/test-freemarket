class ItemsController < ApplicationController
  def index
    #テストで用いた記述
    @items = Item.all.order("id DESC").limit(10)
    #カテゴリーごとに並べる
    @ladies = Item.includes(:photos).where(category_id: 0..199).order("id DESC").limit(10)
  end

  def new
  end

  def show
    
  end
end
