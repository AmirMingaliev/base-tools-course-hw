require "rails_helper"

describe "Create feedback", type: :feature do
  before { visit new_feedback_path }

  scenario "User creates feedback with valid params" do
    fill_in "Your name", with: "Homer Simpson"
    fill_in "Your email", with: "homer.simpson@example.com"
    fill_in "Your feedback", with: "Awesome app!"

    click_on "Create Feedback"

    expect(page).to have_content(I18n.t("feedback.sent"))
  end

  scenario "User creates feedback with invalid params" do
    click_on "Create Feedback"

    expect(page).to have_content("can't be blank")
  end
end
