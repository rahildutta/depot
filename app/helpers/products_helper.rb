module ProductsHelper
  def number_to_currency_br(number)
    number_to_currency(number, :unit => "Rs.", :separator => ".", :delimiter => ",")
  end
end
