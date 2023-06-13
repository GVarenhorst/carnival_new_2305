class Ride
  attr_reader :name,
              :min_height,
              :admission_fee,
              :excitement,
              :total_revenue,
              :rider_log 

  def initialize(info)
    @name = info[:name]
    @min_height = info[:min_height]
    @admission_fee = info[:admission_fee]
    @excitement = info[:excitement]
    @total_revenue = 0
    @rider_log = {}

  end
  # def charge(visitor)
  #   @spending_money -= admission_fee
  #   admission_fee += @total_revenue
  # end

  def board_rider(visitor)
    if visitor.preferences.include?(@excitement) && visitor.tall_enough?(min_height)
      visitor.spending_money - @admission_fee
      @rider_log.shift
    else
      nil
    end
  end
end