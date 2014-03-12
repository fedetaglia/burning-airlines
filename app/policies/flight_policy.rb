class FlightPolicy

  attr_reader :user, :flight

  def initialize(user, flight)
    @user = user
    @flight = flight
  end

  def show?
    if user.present?
      true
    else
      false
    end
  end  

  def create?
    if user.present?
      user.role == "admin"
    else
      false
    end
  end  

  def destroy?
    if user.present?
      user.role == "admin"
    else
      false
    end
  end

  def update?
    if user.present?
      user.role == "admin"
    else
      false
    end
  end

  def edit?
    if user.present?
      user.role == "admin"
    else
      false
    end
  end

end
