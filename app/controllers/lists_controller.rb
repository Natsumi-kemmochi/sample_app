class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end

  def index
  end

  def show
  end

  def edit
  end
  
  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
