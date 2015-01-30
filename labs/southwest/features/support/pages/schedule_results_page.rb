class ScheduleResultsPage
  include PageObject
  table(:schedule_table,:class=>'swa_feature_flightStatus_results_table swa_tables_grayTable2')

  def gather_schedule
     data =[]
    # schedule_table_element.tbody.rows.to_a.map{|rows|rows.text}
    schedule_table_element.tbody.rows.each do |rows|
      data << rows.text
    end

  end


  def collect_rows row
    schedule_table_element[row].to_a.map{|header| header.text}

  end
end




