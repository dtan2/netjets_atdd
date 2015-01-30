module SurveyInteractions

  def open_the_survey
    visit_page Survey
  end

  def submit_valid_survey_info
    on_page(Survey).enter_some_page_info('your name','Ruby')
    sleep 2
  end

  def gather_survey_results
    page = on_page SurveyResult
    results = Hash.new
    results[:message] = page.response
    results
  end

end

World SurveyInteractions