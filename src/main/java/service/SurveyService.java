package service;

import java.util.Map;

import Beans.Survey;

public interface SurveyService {

	Map<String, Object> getSurveyByName(String surveyName);

}
