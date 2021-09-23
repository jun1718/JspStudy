
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;


public class Basic {
	
	public int i;
	public String str = "홍길동";

	public int add(int n1, int n2){
		return n1+n2;
		
	}

//	Math.random(); //오류
	
	public static void main(String[] args) {
	
	
		int[] arr = new int[4];
		
		System.out.println(arr.length);
		System.out.println(Arrays.toString(arr));
		Arrays.sort(arr);
		List<String> strings = new ArrayList<>();
		Collections.sort(strings);
		
		
	}

	
	
}
