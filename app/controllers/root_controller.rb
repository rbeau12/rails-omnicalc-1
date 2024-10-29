class RootController<ApplicationController
  def new
    render({:template=>"app_pages/rootTemp"})
  end
  def root
    @number=params.fetch("user_number")
    render({:template=>"app_pages/rootEnd"})
  end
end
