class RedirectController < ApplicationController
  def index
  end
  def create
    new_url = Redirect.new(
                       url: params[:url],
                       shortened: params[:shortened],
                       accessed: 0,
                      )
    new_url.save
    flash[:success] = "Link to #{new_url.url} Successfully Created"
    redirect_to "/"
  end 
  def link
    link = Redirect.find_by(shortened: params[:shortened])
    link.assign_attributes(
                     accessed: link.accessed + 1
                     )
    link.save
    redirect_to link.url
  end  
end
