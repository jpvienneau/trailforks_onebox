
# name: trailforks_onebox
# about: Trailforks Onebox for rendering Riding Areas in a onebox
# version: 0.1
# authors: Jeff Vienneau

Onebox = Onebox

module Onebox
  module Engine
    class TrailforksRegionOnebox
      include Engine
      #http://www.trailforks.com/region/victoria-park-5866/
      REGEX = /^https?:\/\/www\.trailforks\.com\/region\/([0-9A-Za-z-]*)/
      matches_regexp REGEX

      def to_html
        base_uri = "http://www.trailforks.com/widgets/region_map/?"
        rid = 1
        p = "rid=#{rid}&w=800px&h=400px&maptype=terrain&trailstyle=difficulty&controls=1&list=0&layers=labels,poi,directory,region&z=&lat=&lon="
      #http://www.trailforks.com/widgets/region_map/?rid=1&w=800px&h=400px&maptype=terrain&trailstyle=difficulty&controls=1&list=0&layers=labels,poi,directory,region&z=&lat=&lon=
        url = base_uri + p
        "<iframe height='405' width='800' frameborder='0' allowtransparency='true' scrolling='no' src='#{@url}'></iframe>"
      end
    end
  end
end
