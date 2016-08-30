package basics.controller;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Beans.Option;
import Beans.Question;
import Beans.Survey;
import service.SurveyService;


@Controller
public class PersonController {
	
	private SurveyService surveyService;
	
	@Autowired(required=true)
	@Qualifier(value="surveyService")
	public void setsurveyService(SurveyService surveyService) {
		this.surveyService = surveyService;
	}

	public PersonController() {
		// TODO Auto-generated constructor stub
		System.out.println("hello in cosnt of pc");
	}

	@RequestMapping(value = "/abc", method = RequestMethod.GET)
	public String index(Model model) {
		//model.addAttribute("person", new Person());
		System.out.println("abcd");//model.addAttribute("listPersons", this.personService.listPersons());
		return "index1";
	}
	
	@RequestMapping(value = "/SMSResSelect", method = RequestMethod.GET)
	public String SMSResSelect() {
		//model.addAttribute("person", new Person());
		System.out.println("SMSResSelect");//model.addAttribute("listPersons", this.personService.listPersons());
		return "SMSResSelect";
	}
	
	@RequestMapping(params="SurveyName", value = "/SMSResEdit", method = RequestMethod.GET)
	public String SMSResEdit(@RequestParam(value="SurveyName", required=false) String SurveyName, Model surveymodel) {
		//model.addAttribute("person", new Person());
		//surveymodel.addAttribute("survey", this.surveyservice.getSurveyByName(SurveyName));
		Map<String,Object> map=this.surveyService.getSurveyByName(SurveyName);
		
		//System.out.println(s.getSurveyName()+"qqqqqqqqq");
		surveymodel.addAttribute("survey",(Survey)map.get("survey"));
		surveymodel.addAttribute("question",(List<Question>)map.get("question"));//all questions
		surveymodel.addAttribute("option",(List<Option>)map.get("option"));//all options of all questions, in jsp shd show by choosing for each 
		//question and 4 options depending on question type
		//else should create a new class for question, as mentioned in respondant excel and pass that list to model
		//jsp has to be done. upto this working---tested
		//model.addAttribute("listPersons", this.personService.listPersons());
		return "SMSResEdit";
	}
	
	@RequestMapping(value = "/SMSResEdit", method = RequestMethod.GET)
	public String SMSResEditSave(@ModelAttribute("survey") Survey s,@RequestParam MultiValueMap<String, String> AllResponses) {
		//model.addAttribute("person", new Person());
		System.out.println("abcd"+s.getSurveyName());
		System.out.println(AllResponses.get("txtAns1"));//model.addAttribute("listPersons", this.personService.listPersons());
		return "SMSResEdit";
	}
	
	@RequestMapping(value = "/SMSResEdit/save", method = RequestMethod.GET)
	public String SMSResEditSave() {
		//model.addAttribute("person", new Person());
		//System.out.println(AllResponses.get("txtAns1"));//model.addAttribute("listPersons", this.personService.listPersons());
		return "SMSResEdit";
	}

	@RequestMapping(value = "/SMSResEdit/submit", method = RequestMethod.GET)
	public String SMSResEditSubmit() {
		//model.addAttribute("person", new Person());
		//System.out.println(AllResponses.get("txtAns1"));//model.addAttribute("listPersons", this.personService.listPersons());
		return "SMSResEdit";
	}
	//@RequestParam("SurveyList") String surveylist
}
