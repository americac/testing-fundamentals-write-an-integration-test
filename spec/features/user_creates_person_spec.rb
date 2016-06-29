require "rails_helper"

feature "user creates person" do
  scenario "with valid data" do
      # Go to views/people/new
    visit 'people/new'
      # Fill out form field
    fill_in 'First name', :with => 'Percey'
      # Self explanitory
    click_button "Create Person"
      # Validate page text
    expect(page).to have_content("Person created.")
  end
end
