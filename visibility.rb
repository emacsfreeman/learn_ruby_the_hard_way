class Visibility
  def public_method
    puts "public"
  end

  def without_self
    public_method
    protected_method
    private_method
  end

  def with_self
    self.public_method
    self.protected_method
    self.private_method
  end
  
  protected

  def protected_method
    puts "protected"
  end

  private

  def private_method
    puts "private"
  end

end


class Extended < Visibility
  def call_methods(other)
    other.public_method
    other.protected_method
    other.private_method
  end
end

class NotRelated
  def public_method
    puts "public"
  end

  protected

  def protected_method
    puts "protected"
  end

  private

  def private_method
    puts "private"
  end
end
