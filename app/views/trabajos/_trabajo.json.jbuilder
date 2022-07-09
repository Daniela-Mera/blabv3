json.extract! trabajo, :id, :nombre, :cargo, :descripcion, :vacantes, :sueldo, :fecha_inicio, :tipo_id, :regionch_id, :empresa_id, :created_at, :updated_at
json.url trabajo_url(trabajo, format: :json)
