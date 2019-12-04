class HomeController < ApplicationController
  before_action :load_data

  def index
  end

  def ip
    respond_to do |format|
      format.text { render plain: request.remote_ip }
      format.json { render json: { ip_adress: request.remote_ip, location: @city, asn: @asn } }
   	end
  end

  private

    def load_data
      reader = MaxMind::DB.new('/etc/nginx/geoip/GeoLite2-City_20191203/GeoLite2-City.mmdb', mode: MaxMind::DB::MODE_FILE)
      @city = reader.get(request.remote_ip)
      reader.close

      reader = MaxMind::DB.new('/etc/nginx/geoip/GeoLite2-ASN_20191203/GeoLite2-ASN.mmdb', mode: MaxMind::DB::MODE_FILE)
      @asn = reader.get(request.remote_ip)
      reader.close
    end
end
