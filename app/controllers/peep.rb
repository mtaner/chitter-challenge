class Chitter < Sinatra::Base

	get '/peeps' do
		@peeps = Peep.all
		erb(:'posts/index')
	end

	post '/peeps' do
		peep = Peep.create(post: params[:post])
		peep.save
		redirect '/peeps'
	end

end
