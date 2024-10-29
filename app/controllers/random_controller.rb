class RandomController<ApplicationController
  def new
    render({:template=>"/app_pages/RandomNew"})
  end
  def result
    @min=params.fetch("min").to_f
    @max=params.fetch("max").to_f
    @result=rand(@min..@max)
    render({:template=>"app_pages/RandomResult"})
  end
end
