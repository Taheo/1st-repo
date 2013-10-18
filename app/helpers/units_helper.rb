module UnitsHelper

  def unit_name(unit)
    "#{unit.name} [#{unit.unit_type.name if unit.unit_type.present?}]"
  end
end
