class ToppagesController < ApplicationController
  def index
      @memo = current_user.memos.build
      @memos = current_user.memos.order(id: :desc).page(params[:page])
  end
end
