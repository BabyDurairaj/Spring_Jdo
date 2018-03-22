
window.onload=function()
{
	console.log("hai");
	var ms = 0;
	var hrs= 0;
	var min= 0;
	var sec= 0;
	var calhrs=document.getElementById("hrs");
	var calMin=document.getElementById("min");
	var calSec=document.getElementById("sec");
    var button=document.getElementById("toggle");
    var update=document.getElementById("append");
    var start = true;
   var a  = [];
   var a1=document.getElementById("timecontainer");
    var Interval;
    button.onclick = function()
    {
    	var element=document.getElementById("toggle");
    	element.classList.toggle("active");
    	if(start)
    		{
    	ms  =min=hrs =sec=0;
    	calhrs.innerHTML=calMin.innerHTML=calSec.innerHTML="00";
    	clearInterval(Interval);
    	Interval=setInterval(startTimer,10);
    	start=false;
    		}
    	else
    		{
    		var ttime = setTime(hrs,min,sec);
    		a.push(ttime);
    		a1.innerHTML += a.pop();
    	clearInterval(Interval);
    	start=true;
    		}
    	
    }
    function startTimer()
    {
    	
    	ms++;
    	if(ms > 99) {
    		sec++;
    		ms = 0;
    	}
    	if(sec<9)
    		{
    		calSec.innerHTML="0"+sec;
    		}
    	if(sec>9)
    		{
    		calSec.innerHTML=sec;
    		}
    	if(sec>59)
    		{
    		sec=0;
    		calSec.innerHTML="00";
    		min++;
    		calMin.innerHTML="0"+min;
    		
    		
    		}
    	if(min<9)
    		{
    		calMin.innerHTML="0"+min;
    		}
    	if(min>9)
    		{
    		calMin.innerHTML=min;
    		}
    	if(min>59)
    		{
    		min=0;
    		calMin.innerHTML="00";
    		hrs++;
    		calhrs.innerHTML="0"+min;
    		}
    	if(hrs<9)
    		{
    		calhrs.innerHTML="0"+hrs;
    		}
    	if(hrs>9)
    		{
    		calhrs.innerHTML=hrs;
    		}
    	
    }
    function setTime(hrs,min,sec)
    {
    	var totalHour=(hrs*60) + " H :" ;
    	var totalMin =min +" min ";
    	var totalSec = sec/60;
    	var n = totalHour.concat(totalMin)+'<br/>';
    	
    	return n ;
    }
    update.onclick = function()
    {
    	var s=document.getElementById("update1").value;
       console.log("mm");
       var a2=s.split(":",2);
       console.log(a2);
       var m =a2[0]+ "H :";
       console.log(m);
       var n =a2[1] +"min";
       console.log(n);
       var b = m.concat(n);
    	a.push(b);
    	
    	console.log(b);
    	a1.innerHTML+=a.pop()+'<br/>';
    	
    	
    }
    
};