xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
xml.rows do
  xml.page  1 #params[:page]
  xml.total  1 #(@users.size.to_i / params[:rows].to_i)
  xml.records  3 #{@users.siz}
  @users.each do |u|
    xml.row :id => u.id do
      xml.cell u.name
      xml.cell u.email
      xml.cell u.password
    end
  end
end