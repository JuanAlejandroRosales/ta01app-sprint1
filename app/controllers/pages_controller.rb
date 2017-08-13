class PagesController < ApplicationController
  layout 'internal', except: [:index]  
  def index
  end

  def about_me
  end

  def services
  end

  def contact_us
  end
end
