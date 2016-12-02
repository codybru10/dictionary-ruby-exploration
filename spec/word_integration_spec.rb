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

describe('the path to the success page after completing the add word form', {:type => :feature}) do
  it('processes the users input and takes them to the success page') do
    visit('/words/new')
    fill_in('word', :with => 'hello')
    click_button('Add Word')
    expect(page).to have_content('Word has been added to dictionary')
  end
end
