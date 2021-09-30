package kr.co.jspbasic.user;

public class ScoreBean {
	/*
	 # 여기에는 국어점수(kor:int), 영어점수(eng:int),
	   수학점수(math:int), 총점(total:int), 평균(average:double)
	   총 5개의 데이터를 관리하는 자바빈 클래스를 구성하세요.
	 */
	
	int kor;
	int eng;
	int math;
	int tot;
	double avg;
	
	public ScoreBean() {}
	public ScoreBean(int kor, int eng, int math) {
		this.kor = kor;
		this.eng =  eng;
		this.math = math;
		this.tot = kor+eng+math;
		this.avg = tot / 3.0;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getTot() {
		return tot;
	}
	public void setTot(int total) {
		this.tot = total;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = Math.round(avg*100) / 100.0;
	}
	
	
	
}
