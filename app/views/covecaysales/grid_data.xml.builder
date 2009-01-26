xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
xml.rows do
  xml.page  params[:page]
  xml.total @covecaysales.total_entries.to_i / params[:rows].to_i
  xml.records @covecaysales.total_entries
  @covecaysales.each do |u|
    xml.row :id => u.id do
      xml.cell u.cc_village
      xml.cell u.cc_building
      xml.cell u.cc_unit
      xml.cell u.sq_ft
      xml.cell u.sale_month
      xml.cell u.sale_year
      xml.cell number_to_currency(u.sale_price)
    end
  end
end