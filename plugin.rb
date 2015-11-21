
# name: trailforks_onebox
# about: Trailforks Onebox for rendering Riding Areas in a onebox
# version: 0.1
# authors: Jeff Vienneau

Onebox = Onebox

module Onebox
  module Engine
    class TrailforksWidgetOnebox
      include Engine
      #http://www.trailforks.com/region/victoria-park-5866/
      REGEX = /^https?:\/\/www\.trailforks\.com\/widgets\/region_map\/.?/
      matches_regexp REGEX

      def to_html
          "<iframe height='400' width='800' frameborder='0' allowtransparency='true' scrolling='no' src='#{@url}'></iframe>"
      end
    end
  end
end
