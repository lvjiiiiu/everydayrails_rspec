require 'rails_helper'

describe "Projects Api", type: :request do
  # 1件のプロジェクトを読み出すこと
  it "loads a project" do
    user = FactoryBot.create(:user)
    FactoryBot.create(:project, name: "Sample Project")
    FactoryBot.create(:project, name: "Second Sample Project", owner: user)

  end
end

