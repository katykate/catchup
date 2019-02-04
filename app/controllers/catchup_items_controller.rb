class CatchupItemsController < ApplicationController
  before action :set_catchup_list

def create
  @catchup_item = @catchup_list.catchup_items.create(catchup_item_params)
  redirect_to @catchup_list
end

private

def set_catchup_list
  @catchup_list = CatchupList.find(params[:catchup_list_id])
end

def catchup_item_params
  params[:catchup_item].permit(:content)
end


end
