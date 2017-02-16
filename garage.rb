# this is the garage where cars are stored.
class Garage
  def initialize
    @garage = []
  end
  def garage
    @garage
  end
  def reorder
    @garage.shuffle!
  end
  def store(car)
    @garage << car
  end
  def retrieve(car)
    @garage.delete(car)
  end
  def sort_year
    @garage.sort! { |car1, car2| car1.model_year <=> car2.model_year }
  end
  def sort_model
    @garage.sort! { |car1, car2| car1.class.to_s <=> car2.class.to_s }
  end
  def sort_model_then_year
    @garage.sort! { |car1, car2| [car1.class.to_s, car1.model_year] <=> [car2.class.to_s, car2.model_year] }
  end
end
