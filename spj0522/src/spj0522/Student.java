package spj0522;

public class Student {
	
	static String[] title = {"학번","이름","국어","영어","수학","합계","평균","등수"};
	
	static int count=1000; //클래스 변수 -> 객체 선언 없이 클래스명.변수명
	private int stuNo;			  //인스턴스 변수 -> 객체 선언 후 참조변수명.변수명
	private String name;
	private int kor;
	private int eng;
	private int math;
	private int total;
	private double avg;
	private int rank;
	
	{ //초기화
		count++;
		stuNo = count;
	}
	
	
	//마우스 오른쪽키 -> Source -> Generate Constructor using Fields
	Student(){}  //생성자 - 클래스명과 일치, void 없음
	Student(String name, int kor, int eng, int math){
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
		this.total = kor+eng+math;
		this.avg= this.total/3.0;
	}
	
	//마우스 오른쪽키 -> Source -> Generate Getter and Setter
	public int getStuNo() {
		return stuNo;
	}
	public void setStuNo(int stuNo) {
		this.stuNo = stuNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	
	//읽어오기 메소드
	

}
