package service;

import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import Beans.Survey;
import dao.SurveyDAO;

@Service
public class SurveyServiceImpl implements SurveyService{
	
	private SurveyDAO surveyDAO;

	@Transactional
	public Map<String,Object> getSurveyByName(String surveyName) {
		// TODO Auto-generated method stub
		return surveyDAO.getSurveyByNameDAO(surveyName);
	}
	@Transactional
	public SurveyDAO getSurveyDAO() {
		return surveyDAO;
	}
	
	public void setSurveyDAO(SurveyDAO surveyDAO) {
		this.surveyDAO = surveyDAO;
	}

}
