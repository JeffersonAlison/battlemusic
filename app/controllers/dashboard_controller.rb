# encoding: UTF-8
class DashboardController < ApplicationController
    before_filter :authenticate_user!
    layout "dashboard"
end
