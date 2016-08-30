package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import Beans.Option;
import Beans.Question;
import Beans.Survey;

@Repository
public class DAOimpl implements SurveyDAO{
	
	
	private SessionFactory sessionFactory;
	
	@Autowired(required=true)
	@Qualifier(value="hibernate4AnnotatedSessionFactory")
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	public Map<String,Object> getSurveyByNameDAO(String surveyName) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();	
		System.out.println("nbxzcvbcxz "+surveyName);
		Survey survey=(Survey)session.get(Survey.class, surveyName);
		List<Question> question=(List<Question>)session.createCriteria(Question.class).add(Restrictions.eq("SurveyName", survey.getSurveyName())).list();
		List<Option> option=new ArrayList<Option>();
		for(Question temp: question)
		{
			if(temp.getType()==1 || temp.getType()==2)
				option.addAll((List<Option>)session.createCriteria(Option.class).add(Restrictions.eq("Qno",temp.getQno())).list());
		System.out.println(temp.getQuestion());
		}
		Map<String,Object> map=new HashMap();
		map.put("survey",survey);
		map.put("question", question);
		map.put("option", option);
		return map;
	}

	

}
