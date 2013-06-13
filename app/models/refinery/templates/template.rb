module Refinery
  module Templates
    class Template < Refinery::Core::BaseModel
      self.table_name = 'refinery_templates'

      attr_accessible :name, :body, :position

      acts_as_indexed :fields => [:name, :body]

      validates :name, :presence => true, :uniqueness => true

      class << self
        def per_page(dialog = false)
          dialog ? Videos.pages_per_dialog : Videos.pages_per_admin_index
        end
      end
    end
  end
end
