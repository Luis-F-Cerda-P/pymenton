class InventoryItem < ApplicationRecord
  belongs_to :good
  belongs_to :facility, optional: true
  belongs_to :container, optional: true
  belongs_to :lot

  validate :either_in_a_container_or_lot_but_not_both

  private

  def either_in_a_container_or_lot_but_not_both
    if facility_id.present? && container_id.present?
      errors.add(:base, 'InventoryItem no referencia una bodega -Y- un contenedor; referencia bodega -O- contenedor')
    elsif facility_id.blank? && container_id.blank?
      errors.add(:base, 'InventoryItem referencia una bodega -O- un contenedor; al menos una opción')
    end
  end
end
