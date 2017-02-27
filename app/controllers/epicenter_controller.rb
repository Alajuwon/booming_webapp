class EpicenterController < ApplicationController
  def index
  	@categories = Category.all
  end

  def about
  end
end
