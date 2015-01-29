class ScheduleResultsPage
  include PageObject
  table(:schedule_table,:class=>'swa_feature_flightStatus_results_table swa_tables_grayTable2')

  def gather_schedule
     data=[]
    schedule_table_element.tbody.rows.each do |rows|

      data << rows.text
    end
     puts data
  end

  def collect_header
    schedule_table_element[1].to_a.each do |header|
      header.text
    end
  end

end