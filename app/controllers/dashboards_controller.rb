class DashboardsController < ApplicationController

  expose(:user) { current_user }
  expose(:course) { current_user.courses }
end
