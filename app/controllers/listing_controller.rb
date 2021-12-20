class ListingController < ApplicationController

    get '/listings' do
        if logged_in?
          @listings = Listing.all
          erb :'listings/listings'
        else
          redirect to '/login'
        end
    end

    get '/listings/new' do
        if logged_in?
            erb :'listings/new'
        else
            redirect to '/login'
        end
    end

    get '/listings/:id' do
      if logged_in?
        @listing = Listing.find(params[:id])
        erb :'listings/show'
      else
        redirect to '/login'
      end
    end

    get '/listings/:id/edit' do
      if logged_in?
        @listing = Listing.find(params[:id])
        erb :'listings/edit'
      else
        redirect to '/login'
      end
    end

    post '/listings' do
        if logged_in?
          @listing = Listing.create(params['name'])
          @listing.save
          redirect to "/listings/#{@listing.id}"
        else
          redirect to '/login'
        end
    end

    patch '/figures/:id' do
        @listing = Listing.find_by_id(params[:id])
        @listing.update(params[:listing])
        @listing.save
        redirect to "/listings/#{@listing.id}"
    end

end