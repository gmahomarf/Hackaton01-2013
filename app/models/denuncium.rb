class Denuncium < ActiveRecord::Base
  belongs_to :tipo, :class_name => 'DenunciaTipo'
  belongs_to :departamento
  belongs_to :municipio
  belongs_to :lugar
  belongs_to :institucion
  attr_accessible :descripcion_hechos, :estado, :fecha_incidente, :fecha_primera_audiencia, :fecha_segunda_audiencia, :fecha_sentencia, :observaciones
end
