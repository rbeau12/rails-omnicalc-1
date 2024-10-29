class SquareController<ApplicationController
  def square
    @number=params.fetch("number")
    render({:template=>"app_pages/squareTemp"})
  end
end
