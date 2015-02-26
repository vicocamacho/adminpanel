module Adminpanel
  module CategoriesHelper
    def category_action_link(category)
      if category.childs.empty?
        category_path(category)
      else
        {
          controller: 'categories',
          action: 'index',
          parent_id: category.id,
        }
      end
    end
  end
end