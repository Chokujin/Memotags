class ToppagesController < ApplicationController
  def index
      @memo = current_user.memos.build  # form_with 用
      @memos = current_user.memos.order(id: :desc).page(params[:page])
  end
end
