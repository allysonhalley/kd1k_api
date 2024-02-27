class Rank
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :sign, type: String
  field :type, type: String
  field :code_type, type: String
  field :raking, type: Integer
end
