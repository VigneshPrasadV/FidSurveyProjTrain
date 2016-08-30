package Beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="Option")
public class Option {
	
	@Id
	@Column(name="oid")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int oid;
	@Lob
	@Column(name="question", length=1024)
	private String question;
	private int Qno,optionNo, NoofRespondants;
	@Lob
	@Column(name="value", length=1024)
	private String value;

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public int getOptionNo() {
		return optionNo;
	}

	public void setOptionNo(int optionNo) {
		this.optionNo = optionNo;
	}

	public int getNoofRespondants() {
		return NoofRespondants;
	}

	public void setNoofRespondants(int noofRespondants) {
		NoofRespondants = noofRespondants;
	}

	public int getQno() {
		return Qno;
	}

	public void setQno(int qno) {
		Qno = qno;
	}

}
