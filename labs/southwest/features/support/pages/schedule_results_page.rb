class ScheduleResultsPage
  include PageObject
  table(:schedule_table,:class=>'swa_feature_flightStatus_results_table swa_tables_grayTable2')

  def gather_schedule

    schedule_table_element.tbody.row.text.split(/\n/)

  end


end