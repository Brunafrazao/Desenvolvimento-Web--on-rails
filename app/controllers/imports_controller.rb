class ImportsController < ApplicationController
  def artist
    if import_artist_params[:name].blank?
      redirect_to artists_path, notice: 'Please inform an artist'
      return
    end

    client = ::DiscogsRequestsService::Client.new
    artist = client.get_artist(import_artist_params[:name])
  
    Artist.new(
      name: artist.name, 
      profile: artist.profile, 
      user: current_user
    ).save

    redirect_to artists_path
  end

  def artist_releases
    quantity_of_releases = params['import_artist_releases']['max_results']
    artist_id = params['artist_id']

    artist_name = Artist.find(artist_id).name

    client = ::DiscogsRequestsService::Client.new
    releases = client.search_artist_releases(artist_name, max_results: quantity_of_releases)

    releases.each do |release|
      Release.new(
        title: release['title'],
        release_type: release['type'],
        year: release['year'],
        artist_id: artist_id
      ).save
    end

    redirect_to artist_releases_url(artist_id: artist_id)
  end

  private

  def import_artist_params
    params.require(:import_artist).permit(
      :name
    )
  end  
end