require 'rails_helper'

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
      
    end
  end

  scenario "They see all products" do
    # ACT
    visit root_path

    # DEBUG
    # save_screenshot

    # VERIFY
    expect(page).to have_css 'article.product', count: 10
  end


  scenario 'look at product detail' do
    visit '/'

    product = page.find('article.product:first-child')
    name = product.find('h4').text

    product.find('.actions > a.btn-default').click

    expect(page).to have_css('.products-show .page-header h1')
    title = page.find('.products-show h1')
    expect(title.text).to end_with(name)
    save_screenshot 'detail_page2.png'
  end

  scenario 'go to product by id' do
    product = Product.all.sample

    visit "/products/#{product.id}"
    expect(page).to have_css('.products-show .page-header h1')
    title = page.find('.products-show h1')
    expect(title.text).to end_with(product.name)
  end
end