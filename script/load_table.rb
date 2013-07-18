CustomTable.transaction  do
  (1..5).each do |i|
    CustomTable.create(:name =>"动态表单#{i}",:desc=>"#{i}表单的详情")
  end
end