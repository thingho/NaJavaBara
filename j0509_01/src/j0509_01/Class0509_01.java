package j0509_01;

public class Class0509_01 {

	public static void main(String[] args) {
		// 변수 8가지
		// 논리형 - boolean
		// 문자형 - char, ' '(공백 한칸만) -> 무조건 문자 1개
		// 정수형 - byte, short, int, long
		// 실수형 - float, double
		// 문자열 - String(길이와 상관없이 모두 들어감
		
		int num = 3;
		int num2 = 2;
		char ch = 'a';  //A:65, a:97
		
		int num3 = 3;
		int num4 = 4;
		int num5 = 5;
		System.out.printf("더하기 결과값 : %d %n", num+num2);
		System.out.printf("나누기 결과값 : %f  \n", num/(double)num2);
		
		System.out.print("더하기 결과값 : "+(num+num2));

		System.out.println(num+num2);
		System.out.println(num-num2);
		System.out.println(num*num2);
		System.out.println(num/num2);
		System.out.println(num/(double)num2);
		System.out.println(10+3);
		System.out.println(10-3);
		System.out.println(10*3);
		System.out.println(10/3);
	}

}
