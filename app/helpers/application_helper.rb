module ApplicationHelper
  def to_price(amount)
    "R$%d" % amount
  end
end
