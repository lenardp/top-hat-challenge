# A base class for creating services.  Use this to perform
# operations on models.  This is especially beneficial when
# operating over multiple models at once, so that models
# stay independent of each other.
class ApplicationService
  def self.call(*args, &block)
    new(*args, &block).call
  end
end
