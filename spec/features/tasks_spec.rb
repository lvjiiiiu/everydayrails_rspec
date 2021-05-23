require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  # ユーザーがタスクの状態を切り替える
  scenario "user toggles a taask", js:true do
    user = FactoryBot.create(:user)
    project = FactoryBot.create(:project, name: "RSpec tutorial", owner: user)
    task = project.tasks.create!(name: "Finish RSpecr tutorial")

    visit root_path
    click_link "Sign in"
    fill_in "Email", with: user.email
    fill_in "Passward", with: user.passward
    click_button "Log in"

    expect(page).to have_css "label#task_#{task.id}.completed"
    expect(task.reload).to be_completed

    uncheck "Finish RSpec tutorial"

    expect(page).to have_css "label#task_#{task.id}.completed"
    expect(task.reload).to be_completed
  end
end
