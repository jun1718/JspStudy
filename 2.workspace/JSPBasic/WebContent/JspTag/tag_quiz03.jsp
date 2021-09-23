<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.util.List" import = "java.util.ArrayList" 
	import = "java.util.Collections" import = "java.util.Random"%>
    
<%!
private String[] jobs = {"도적", "사냥꾼", "사제", "전사"};
private List<String> party = new ArrayList<>();
private int[] jobNums = new int[4]; //이렇게 직업수를 정하는법도있고
						//contains로 true일때마다 count를 1식늘리는방법도있다.
private int num;

private Random r = new Random();

public void setParty(){
	num = r.nextInt(jobs.length);
	party.add(jobs[num]); 
	
	jobNums[num]++;
}

public void checkParty(){
	if(party.size()==10){
		party.clear();
		for(int i=0;i<jobNums.length;i++){
			jobNums[i] = 0;
		}
	}
}
%>   
    
<%
checkParty();
setParty();
String job = party.get(party.size()-1);
int jobNum = jobNums[num];

String partyJob = party.toString();
int partyTot = party.size();
%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>당신의 역할</h1>

당신에게 부여된 역할은 <%= job %>입니다. <br />
현재 파티에 당신과 같은 역할을 가진 플레이어는 <%= jobNum %>명입니다. <br /> <br />


현재 파티 구성 <br />
<%= partyJob %>(<%= partyTot %>명 참가중) <br />

</body>
</html>