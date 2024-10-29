class PaymentController<ApplicationController
  def new
    render({:template=>"app_pages/paymentNew"})
  end
  def result
    @apr=params.fetch("APR").to_f
    apr=@apr/100
    apr=apr/12
    @years=params.fetch("years").to_i
    months=@years*12
    @pv=params.fetch("PV").to_f
    numerator=apr*@pv
    denom= 1-(1+apr)**(-1*months)
    @outcome=(numerator/denom).to_fs(:currency)
    render({:template=>"app_pages/paymentOut"})
  end
end
