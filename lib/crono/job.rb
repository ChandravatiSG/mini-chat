require 'stringio'
require 'logger'

module Crono
  # Crono::Job represents a Crono job
  class Job
   include Logging

  def save
  	@semaphore.synchronize do
    update_model
    clear_job_log
		ActiveRecord::Base.clear_active_connections!
  end
end
  end
end