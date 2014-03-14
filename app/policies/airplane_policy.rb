class AirplanePolicy

  attr_reader :user, :airplane

  def initialize(user, airplane)
    @user = user
    @airplane = airplane
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