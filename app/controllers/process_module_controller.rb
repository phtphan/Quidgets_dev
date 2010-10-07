class ProcessModuleController < ApplicationController
    active_scaffold :process_module do |config|
      config.label = "Process(es)"
      config.columns = [:name, :created_at, :updated_at]
      list.sorting = {:name => 'ASC'}
    end    
end
