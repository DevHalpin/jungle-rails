module SalesHelper
  def active_sale?
    Sale.active.any?
  end

  def sale_name
      sale = Sale.where("starts_on < ? AND ends_on > ?", Date.current(), 
      Date.current()).first
      sale.name
  end

  def sale_percent
    sale = Sale.where("starts_on < ? AND ends_on > ?", Date.current(), 
      Date.current()).first
      sale.percent_off
  end

end