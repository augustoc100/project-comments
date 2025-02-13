module Project
  class Project < ApplicationRecord

    attribute :name, :string
    attribute :description, :text
    attribute :start_date, :date
    attribute :end_date, :date
    attribute :status, :string, default: 'inactive'

    belongs_to :owner, class_name: 'User'
    belongs_to :created_by, class_name: 'User'

    has_many :comments
  end
end
