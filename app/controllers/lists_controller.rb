class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = list[list_params]
  end



  private

  def list_params
    params.require(:list).permit(:name)
  end
end
