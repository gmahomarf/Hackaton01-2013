class Municipio < ActiveRecord::Base
  belongs_to :departamento
  attr_accessible :nombre
end
