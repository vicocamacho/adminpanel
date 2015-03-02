module Adminpanel
  module SortableActions
    extend ActiveSupport::Concern
    included do
      before_action :set_resource, only: [
        :move_to_better,
        :move_to_worst
      ]
    end

    def move_to_better
      resource.move_to_better_position
      update_index_table

    end

    def move_to_worst
      resource.move_to_worst_position
      update_index_table
    end

  protected
    def set_resource
      if @model.respond_to? :friendly
        @resource_instance = @model.friendly.find(params[:id])
      else
        @resource_instance = @model.find(params[:id])
      end
    end

    def update_index_table
      respond_to do |format|
        format.js do
          render 'adminpanel/templates/index_records', locals: {
            collection: @model.all
          }
        end
      end
    end
  end
end
