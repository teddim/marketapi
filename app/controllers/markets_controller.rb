class MarketsController < ApplicationController

  def how_to_use_marketapi

  end

  def by_state
    @markets = Market.where("translate(lower(state),' ','')LIKE ?", params[:id].downcase.gsub(' ',''))
    @results = []
    @markets.each do |market|
      @results << {
        :id => market.id,
        :city => market.city,
        :state => market.state,
        :longitude => market.x,
        :latitude => market.y
      }
    end
    render :json => @results
  end

  def by_city
    city_name = params[:id]
    @markets = Market.where("translate(lower(city),' ','')LIKE ?", params[:id].downcase.gsub(' ',''))
    @results = []
    @markets.each do |market|
      @results << {
        :id => market.id,
        :city => market.city,
        :state => market.state,
        :longitude => market.x,
        :latitude => market.y
      }
    end
    render :json => @results
  end

  def by_id
    market = Market.where("id = ?", params[:id]).first
    results = {
      :id => market.id,
      :city => market.city,
      :marketname => market.marketname,
      :website => market.website,
      :street => market.street,
      :city => market.city,
      :county => market.county,
      :state => market.state,
      :zip => market.zip,
      :season1date => market.season1date,
      :season1time => market.season1time,
      :location => market.location,
      :longitude => market.x,
      :latitude => market.y
    }
    render :json => results
  end

  def services
    market = Market.where("id = ?", params[:id]).first
    results = {
      :id => market.id,
      :marketname => market.marketname,
      :city => market.city,
      :website => market.website,
      :credit => market.credit,
      :wic => market.wic,
      :wiccash => market.wiccash,
      :sfmnp => market.sfmnp,
      :snap => market.snap,
      :bakedgoods => market.bakedgoods,
      :cheese => market.cheese,
      :crafts => market.crafts,
      :flowers => market.flowers,
      :eggs => market.eggs,
      :seafood => market.seafood,
      :herbs => market.herbs,
      :vegetables => market.vegetables,
      :honey => market.honey,
      :jams => market.jams,
      :maple => market.maple,
      :meat => market.meat,
      :nursery => market.nursery,
      :nuts => market.nuts,
      :plants => market.plants,
      :poultry => market.poultry,
      :prepared => market.prepared,
      :soap => market.soap,
      :trees => market.trees,
      :wine => market.wine
    }
    render :json => results
  end

end
