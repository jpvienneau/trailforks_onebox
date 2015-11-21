
# name: trailforks_onebox
# about: Trailforks Onebox for rendering Riding Areas in a onebox
# version: 0.3
# authors: Jeff Vienneau

Onebox = Onebox

module Onebox
  module Engine
    class TrailforksWidgetOnebox
      include Engine
      # http://www.trailforks.com/widgets/region_map/?rid=1&w=800px&h=400px
      # &maptype=terrain&trailstyle=difficulty&controls=1&list=0&layers=labels,poi,directory,region&z=&lat=&lon=
      REGEX = /^https?:\/\/www\.trailforks\.com\/widgets\/\w+\/?\?.+/
      matches_regexp REGEX

      def to_html
          "<iframe height='400' width='800' frameborder='0' allowtransparency='true' scrolling='no' src='#{@url}'></iframe>"
      end
    end
  end
end
