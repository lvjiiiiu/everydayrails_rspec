require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  describe "#index" do
    before do
      @user = FactoryBot.create(:user)
    end
    # 正常にレスポンスを返すこと
    it "responds succesfilly" do
      sign_in @user
      get :index
      expect(response).to be_success
    end

    # 200レスポンスを返すこと
    it "return a 200 response" do
      sign_in @user
      get :index
      expect(response).to have_http_status "200"
    end
  end

end
