class Visitor
  attr_reader :name, 
              :height, 
              :spending_money,
              :preferences

  def initialize(name, height, spending_money)
    @name = name
    @height = height
    @spending_money = spending_money.to_s.tr('$', '').to_i
    @preferences = []
  end

  def add_preference(preference_type)
    @preferences.push(preference_type)
  end

  def tall_enough?(min_height)
    @height >= min_height
  end
end