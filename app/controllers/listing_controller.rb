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

    post '/listings' do
        if logged_in?
          if params[:name] == "" ||params[:price] == "" ||params[:pic] == "" ||params[:bedroom] == "" ||params[:bathroom] == "" ||params[:street] == "" ||params[:city] == ""
            redirect to "/listings/new"

          else
            @listing = current_user.listings.build(name: params[:name], price: params[:price], bedrooms: params[:bedrooms], bathrooms: params[:bathrooms],
             description: params[:description], street: params[:street], city: params[:city], state: params[:state], postal: params[:postal], pic: params[:pic], realtor_id: params[:realtor_id]
            )
            @listing.save
            redirect to "/listings/#{@listing.id}"
          end
        else
          redirect to '/login'
        end
    end

    get '/listings/:id' do
      if logged_in?
        @listing = Listing.find(params[:id])
        @realtor = Realtor.find(@listing.realtor_id)
        erb :'listings/show'
      else
        redirect to '/login'
      end
    end

    get '/listings/:id/edit' do
      if logged_in?
        @listing = Listing.find(params[:id])
        if @listing && @listing.user == current_user
          erb :'listings/edit'
        else
          redirect to '/listings'
        end
      else
        redirect to '/login'
      end
    end

    post '/listings/:id' do
        @listing = Listing.find_by_id(params[:id])
        @listing.update(name: params[:name], price: params[:price], bedrooms: params[:bedrooms], bathrooms: params[:bathrooms],
        description: params[:description], street: params[:street], city: params[:city], state: params[:state], postal: params[:postal], pic: params[:pic], realtor_id: params[:realtor_id])
        redirect to "/listings/#{@listing.id}"
    end

    post '/listings/:id/delete' do
      if logged_in?
        @listing = Listing.find_by_id(params[:id])
        if @listing && @listing.user == current_user
          @listing.delete
        end
        redirect to '/listings'
      else
        redirect to '/'
      end
    end

    get '/users' do
      if logged_in?
        @listings = current_user.listings
        erb :'users/show'
      else
        redirect to '/login'
      end
  end
end