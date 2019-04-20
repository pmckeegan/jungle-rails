class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])

    @review = @product.reviews.create()

    if @review.save
      redirect_to @product, notice: 'Your review was saved.'
    else
      end
      redirect_to'/', notice: 'Your review did not save.'
  end
end