class MemosController < ApplicationController
  def new
  end

  def create
    @memo = current_user.memos.build(memo_params)
    if @memo.save
      flash[:success] = 'タスクを登録しました。'
      redirect_to root_url
    else
      @memos = current_user.memos.order(id: :desc).page(params[:page])
      flash.now[:danger] = 'タスクの登録に失敗しました。'
      render 'toppages/index'
    end
  end

  def index
  end

  def show
  end

  def destroy
  end

  def edit
  end

  def update
    if @memo.update(memo_params)
      flash[:success] = 'メモは正常に更新されました'
      redirect_to @memo
    else
      flash.now[:danger] = 'メモは更新されませんでした'
      render :edit
    end
  end
  
  def calender
  end
  
  private
  
  def memo_params
    params.require(:memo).permit(:content)
  end

  
  def correct_user
    @memo = current_user.memos.find_by(id: params[:id])
    unless @memo
      redirect_to root_url
    end
  end
  
end
