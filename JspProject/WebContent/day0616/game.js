/**
 * 
 */

$(function(){

	//음악파일 생성 ..플레이
	var fire=new Audio("../game/fire.wav");
	var jang=new Audio("../game/jang.wav");
	
	//총쏠때 소리
	$('.gun').click(function(){
		
		fire.play();
		//총을쏘면 0~11까지의 랜덤값을 발생 인형이 사라지게....
		//사라졌으면 사라졌다고 표시..
		//2번째 인형이 사라졌다고...몇개가 남았는지
		//다맞추면 게임끝!!
		var idx=parseInt(Math.random()*12);
		
		if($(".sunban li img").eq(idx).is(":hidden"))
			$('#msg').html('이미 사라진 인형입니다');
		else
			{
			$('.sunban li img').eq(idx).fadeOut();
			$('#msg').html(idx+1+"번째 인형이 사라졌네요("+remain1()+"개 남음)");
			}
		
		if(remain1()==0)
			$('#msg').html("게임끝");
		
		
	});
	
	
	//돈을 클릭하면 다시 인형이 나타나고
	//메세지에 다시 게임시작..셋팅완료
	//클릭한 돈은 사라져야함
	$('.money li img').click(function(){
		
		$('.sunban li img').fadeIn();
		$('#msg').html("다시셋팅완료!!게임시작!!");
		$(this).hide();
		
	});
	
});

//몇개남았는지 함수만들기
function remain1()
{
	var n=-1;
	
	$('.sunban li img').each(function(index, item) {
		
		if($(this).is(":visible")){
			n++;
		}
	});
	
	return n;
}
