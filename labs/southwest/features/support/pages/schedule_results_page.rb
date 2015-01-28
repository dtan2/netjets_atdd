class ScheduleResultsPage
  include PageObject
  table(:schedule_table,:class=>'swa_feature_flightStatus_results_table swa_tables_grayTable2')

  def gather_schedule
     data=[]
    schedule_table_element.tbody.rows.each do |x|
    data << x.text
    end
puts data
  end


end