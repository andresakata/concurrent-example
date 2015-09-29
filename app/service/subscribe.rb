require 'concurrent'

class Subscribe
  include Concurrent::Async
  include Singleton

  def execute_list
    # Imagine a list being received here
    200.times do
      execute
    end
  end

  def execute
    # Imagine something that takes long time here
    subscriber = Subscriber.create(email: 'andregsakata@andregsakata.com')
    ThirdPartyIntegrator.instance.async.execute(subscriber)
  end
end
