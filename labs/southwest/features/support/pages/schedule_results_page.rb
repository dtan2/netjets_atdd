class ScheduleResultsPage
  include PageObject
  table(:schedule_table,:class=>'swa_feature_flightStatus_results_table swa_tables_grayTable2')

  def gather_schedule

    schedule_table_element.tbody.rows.to_a.map{|rows|rows.text}

    end
     puts data
  end

  def collect_rows row
    schedule_table_element[row].to_a.map{|header| header.text}

  end




  def create_hash



  end


end