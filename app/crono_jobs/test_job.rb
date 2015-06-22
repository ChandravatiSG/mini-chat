# app/jobs/test_job.rb

class TestJob
	def perform
		puts "hello"
		comments = Comment.delete_old_comments
		puts "#{comments.inspect}"
	end
end
