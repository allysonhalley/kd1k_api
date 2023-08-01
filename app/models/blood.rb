class Blood
  include Mongoid::Document
  include Mongoid::Timestamps
  field :group, type: String
  field :type, type: String
  field :rh, type: String
  belongs_to :person
end
