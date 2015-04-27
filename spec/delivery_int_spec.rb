require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_esceptions, false)

describe('shows the cost of shipping a package', {:type => :feature}) do
  it('returns the cost of shipping a package of given dimensions and weights') do
    visit('/')
    fill_in('length', :with => "2")
    fill_in('width', :with => "2")
    fill_in('height', :with => "2")
    fill_in('weight', :with => "2")
    click_button('Submit')
    expect(page).to have_content("2.99")
  end
end
