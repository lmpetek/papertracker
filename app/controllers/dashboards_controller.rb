class DashboardsController < AuthorizedController
  skip_authorization_check :only => [:show]
  skip_load_and_authorize_resource :only => [:show]

  def show
=begin
    chart = Presenter::DashboardChart.new

    chart.add_headers 'Ventas', 'Compras', 'Cobranzas', 'Pagos'

    (1..12).each do |offset|

      relative_date = Date.today.months_ago( 12 - offset )

      since_date = relative_date.beginning_of_month
      until_date = relative_date.end_of_month

      vtas = 0
      Comprobante.where(:fecha => since_date..until_date).where("Type <> 'Recibo'").each do |cpbte|
        if cpbte.company_id == current_company.id

          if comprobante_valido(cpbte)
            vtas = vtas + (cpbte.importe * cpbte.signo)
          end
        end
      end

      cob = 0
      Comprobante.where(:fecha => since_date..until_date).where("Type = 'Recibo'").each do |cpbte|
        if cpbte.company_id == current_company.id
          cob = cob + (cpbte.importe * cpbte.signo * -1)
        end
      end

      cprs = 0
      Hefesto::Comprobante.where(:fecha => since_date..until_date).where("Type <> 'Hefesto::Recibo'").each do |cpbte|
        if cpbte.company_id == current_company.id
          if cpbte.type.include? 'Hefesto'
              cprs = cprs + (cpbte.importe * cpbte.signo * -1)
          end
        end
      end

      pag = 0
      Hefesto::Comprobante.where(:fecha => since_date..until_date).where("Type = 'Hefesto::Recibo'").each do |cpbte|
        if cpbte.company_id == current_company.id
          if cpbte.type.include? 'Hefesto'
              pag = pag + (cpbte.importe * cpbte.signo)
          end
        end
      end

      chart.add_data(:month => since_date.month.to_i,
             :data => [ vtas.round(0).to_i, cprs.round(0).to_i, cob.round(0).to_i, pag.round(0).to_i ])

    end

    @chart = chart
=end
  end

  def comprobante_valido(cpbte)
    valido = true
    ['Comprobantedebito','Comprobantecredito'].each do |a|
       if a.include? cpbte.type.to_s
          valido = false
       end
    end
    return valido
  end
end