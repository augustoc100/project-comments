module Project
  class Comment < ApplicationRecord
    attribute :text, :text

    belongs_to :created_by, class_name: 'User'
    belongs_to :project
  end
end
