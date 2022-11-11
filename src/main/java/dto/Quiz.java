package dto;

public class Quiz {
	String question;
	String answer;
	int no;

public Quiz (String question, String answer) {
	super();
	this.question = question;
	this.answer = answer;
}

public String getQuestion() {
	return question;
}

public void setQuestion(String question) {
	this.question = question;
}

public String getAnswer() {
	return answer;
}

public void setAnswer(String answer) {
	this.answer = answer;
}

public int getNo() {
	return no;
}

public void setNo(int no) {
	this.no = no;
}


}
