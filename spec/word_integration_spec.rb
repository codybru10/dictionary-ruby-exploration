require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expections, false)

describe('the path to add word form', {:type => :feature}) do
  it('processes the users click and takes them to the add word form') do
    visit('/')
    click_link('Add New Word to Dictionary')
    expect(page).to have_content('Add Word to Dictionary')
  end
end
