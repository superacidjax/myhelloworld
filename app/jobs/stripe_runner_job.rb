class StripeRunnerJob < ActiveJob::Base
  queue_as :default

  def perform(guid)
    ActiveRecord::Base.connection_pool.with_connection do
      charge = Charge.find_by(guid: guid)
      return unless charge
      charge.process!
    end
  end
end
