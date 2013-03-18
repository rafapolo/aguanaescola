class Coleta < ActiveRecord::Base
  belongs_to :escola
  attr_accessible :data, :info
end
