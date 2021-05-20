class HomeController < ApplicationController

  skip_before_action :authenticate_user!
  # サインインしていなければアプリケーションのHPへ返す

  def index
  end
end
