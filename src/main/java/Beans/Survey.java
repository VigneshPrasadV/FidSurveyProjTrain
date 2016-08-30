package Beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;



@Entity
@Table(name="Survey")
public class Survey {
	private String UName;
	@Id
	@Column(name="SurveyName", length=512)
	//@GeneratedValue(strategy=GenerationType.IDENTITY)
	 
	private String SurveyName;
	
	@Lob
	@Column(name="desc", length=1024)
	private String Desc;
	private int RespondantsDistributed, RespondantResponded,saveFlag;
	//private Question[] question;
	public String getUName() {
		return UName;
	}
	public void setUName(String uName) {
		UName = uName;
	}
	public String getSurveyName() {
		return SurveyName;
	}
	public void setSurveyName(String surveyName) {
		SurveyName = surveyName;
	}
	public String getDesc() {
		return Desc;
	}
	public void setDesc(String desc) {
		Desc = desc;
	}
	public int getRespondantsDistributed() {
		return RespondantsDistributed;
	}
	public void setRespondantsDistributed(int respondantsDistributed) {
		RespondantsDistributed = respondantsDistributed;
	}
	public int getRespondantResponded() {
		return RespondantResponded;
	}
	public void setRespondantResponded(int respondantResponded) {
		RespondantResponded = respondantResponded;
	}
	public int getSaveFlag() {
		return saveFlag;
	}
	public void setSaveFlag(int saveFlag) {
		this.saveFlag = saveFlag;
	}
	
}
