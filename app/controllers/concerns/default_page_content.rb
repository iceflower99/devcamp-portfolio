module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
  before_filter:set_pages_defaults
  end

def set_pages_defaults 
  @page_title ="Devcamp Portfolio | My Portfolio Website"
  @seo_keywords="Iceflower portfolio"
  end
end
