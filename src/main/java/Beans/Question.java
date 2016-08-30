package Beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;


@Entity
@Table(name="Question")
public class Question {
	@Id
	@Column(name="Qno")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Qno;
	@Lob
	@Column(name="SurveyName", length=1024)
	private String SurveyName;
	private int type;
	@Lob
	@Column(name="question", length=1024)
	private String question;
	@Lob
	@Column(name="descans", length=1024)
	private String descAns;
	public String getSurveyName() {
		return SurveyName;
	}
	public void setSurveyName(String surveyName) {
		SurveyName = surveyName;
	}
	
	//private Option[] options;
	public int getQno() {
		return Qno;
	}
	public void setQno(int qno) {
		Qno = qno;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getDescAns() {
		return descAns;
	}
	public void setDescAns(String descAns) {
		this.descAns = descAns;
	}
	/*public Option[] getOptions() {
		return options;
	}
	public void setOptions(Option[] options) {
		this.options = options;
	}*/

}
