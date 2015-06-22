module Crono
  class Job
	  def save
			@semaphore.synchronize do
		    update_model
		    clear_job_log
			  ActiveRecord::Base.clear_active_connections!
		  end
	  end
	end
end