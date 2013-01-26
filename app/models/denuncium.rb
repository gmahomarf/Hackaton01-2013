class Denuncium < ActiveRecord::Base
  accepts_nested_attributes_for :denunciante, :denunciado

  belongs_to :tipo, :class_name => 'DenunciaTipo'
  belongs_to :departamento
  belongs_to :municipio
  belongs_to :lugar
  belongs_to :institucion
  has_one :denunciante, :class_name => 'Persona'
  has_one :denunciado, :class_name => 'Persona'
  attr_accessible :descripcion_hechos, :estado, :fecha_incidente, :fecha_primera_audiencia, :fecha_segunda_audiencia, :fecha_sentencia, :observaciones
end
