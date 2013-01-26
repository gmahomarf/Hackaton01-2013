class Persona < ActiveRecord::Base
  belongs_to :escolaridad
  belongs_to :estado_civil
  belongs_to :etnia
  attr_accessible :apellido, :casa, :cedula, :discapacidad, :fecha_nacimiento, :hijas, :hijos, :incidentes, :ingreso_promedio, :jafatura_hogar, :lugar_nacimiento, :nombre, :ocupacion, :reincidente, :escolaridad_id, :estado_civil_id, :etnia_id
end
