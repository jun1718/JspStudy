
public class Basic {
	
	public int i;
	public String str = "홍길동";

	public int add(int n1, int n2){
		
		for(int dan=2;dan<=9;dan++){
			if(dan % 2 == 0) continue;
			for(int hang=1;hang<=9;hang++){
				System.out.println(dan + " x " + hang + " = " + dan*hang
						+ "<br />");
			}
		}

		return n1+n2;
		
	}

//	Math.random(); //오류
	
	public static void main(String[] args) {
		Math.random();
		
		
		for(int dan=2;dan<=9;dan++){
			if(dan % 2 == 0) continue;
			for(int hang=1;hang<=9;hang++){
				System.out.println(dan + " x " + hang + " = " + dan*hang
						+ "<br />");
			}
		}
	}

}
