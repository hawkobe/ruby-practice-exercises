class Base

  def initialize
    @name = "Base"
  end

  private

  def private_method
    puts "Private method called"
  end

  protected

  def protected_method
    puts "Protected method called"
  end

  public

  def get_name
    @name
  end
end

class Derived < Base

  def public_method
    private_method
    protected_method
  end
end

d = Derived.new
d.public_method
puts d.get_name