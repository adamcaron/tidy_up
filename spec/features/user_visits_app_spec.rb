require 'rails_helper'

RSpec.feature "User visits app" do

  scenario "sees all the tasks" do
    visit root_path

    expect(page).to have_css('div.tasks', text: "Tasks")
    expect(page).to have_css('ul.all-tasks')
    expect(page).to have_css('li.task')
    expect(page).to have_css('.title')
    expect(page).to have_css('.location')
  end

  scenario "sees option for admin login" do
    visit root_path

    expect(page).to have_field("Email", with: "Email")
    expect(page).to have_field("Password", with: "Password")
    expect(page).to have_button("Admin Login")
  end

  xscenario "sees option to register as a new admin" do
    visit root_path

    expect(page).to have_link("Register as Admin")
  end

end