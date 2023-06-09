class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def create
    @list = List.new(list_params)
    if @list.save
        redirect_to lists_path, notice: "List added succesfully!"
    else
        render 'new'
    end
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
