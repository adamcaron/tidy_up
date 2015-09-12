require 'rails_helper'

RSpec.feature "User visits app" do

  scenario "sees all the tasks" do
    visit root_path

    expect(response.body).to have_css("ul.all-tasks", text: "All Tasks")

    within('ul.all-tasks') do
      locate('li.task')
      # locate(:css, 'li.task')
    end

    within('li.task') do
      locate('title')
      locate('location')
      # locate(:css, 'title')
      # locate(:css, 'location')
    end
  end

  xscenario "sees option for admin login" do
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