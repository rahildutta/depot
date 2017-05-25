
class Product < ActiveRecord::Base
  validates :title, :img_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  private
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    end
  else
    errors.add(:base,'Line Items Present')
    return false
  end
  def self.latest
    Product.order(:updated_at).last
  end

end
