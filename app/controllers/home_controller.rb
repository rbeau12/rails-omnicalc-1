class HomeController<ApplicationController
  def home
    render({:template=>"app_pages/homeTemp"})
  end
end
