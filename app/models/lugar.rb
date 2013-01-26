class Lugar < ActiveRecord::Base
  belongs_to :municipio
  attr_accessible :nombre, :tipo
end
