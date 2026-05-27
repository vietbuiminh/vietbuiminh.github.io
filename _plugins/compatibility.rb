class Object
  def tainted?
    false
  end unless method_defined?(:tainted?)
end