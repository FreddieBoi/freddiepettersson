class JobsController <  InheritedResources::Base
  actions :index, :show
  respond_to :html, :xml, :json
end
