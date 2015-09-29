require 'concurrent'

class ThirdPartyIntegrator
  include Concurrent::Async
  include Singleton

  def execute(subscriber)
    # Imagine that a request is being done instead a sleep
    sleep(0.2)
    subscriber.third_party_code = '200'
    subscriber.save
  end
end