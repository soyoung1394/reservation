class HomeController < ApplicationController
require 'nokogiri'

def index
    
    
end
    
      
def restaurant
  
  doc = File.open("app/controllers/restaurant.xml") { |f| Nokogiri::XML(f) }
    
 
    @rows =doc.xpath('//root/Row').map do |i|
      {
        'img' => i.xpath('img').inner_text,
       '업소명' => i.xpath('업소명').inner_text,
       '업태명' => i.xpath('업태명').inner_text,
       '소재지전화' => i.xpath('소재지전화').inner_text,
      '소재지_지번_' => i.xpath('소재지_지번_').inner_text


      }
    
end


end
end



