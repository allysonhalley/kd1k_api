class VoterDatum
  include Mongoid::Document
  include Mongoid::Timestamps
  field :number, type: String
  field :zone, type: String
  field :section, type: String
  belongs_to :person
end
