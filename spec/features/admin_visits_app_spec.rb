require 'rails_helper'

RSpec.feature "Admin visits app" do
  xscenario "logs in" do
    admin = create_admin!
    visit root_path
    fill_in "Email", with: admin.email
    fill_in "Password", with: admin.password

    click "Admin Login"

    expect(response.status).to be(200)
    expect(current_path).to eq(root_path)
    expect(page).to have_link("Admin Dashboard")
    expect(page).to have_css('div.all-tasks')
    expect(page).to have_content("Add a task") # link or button? Ideally this initializes a form via AJAX.
  end
end