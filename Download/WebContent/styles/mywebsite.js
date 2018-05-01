/**
 * Created by Administrator on 2016/11/14.
 */

function imgRound(id,w,h,x,y,r,dv,rh,ah){
    if (ah==undefined) ah=1;
    if (rh==undefined) rh=10;
    var dv=dv*ah; //��ת�ٶ�
    var pi=3.1415926575;
    var d=pi/2;
    var pd=Math.asin(w/2/r);
    var smove=true;
    var imgArr=new Array();
    var objectId=id;
    var o=document.getElementById(objectId);
    o.style.position="relative";
    var arrimg=o.getElementsByTagName("img");
    var pn=arrimg.length; //ͼƬ����
    var ed=pi*2/pn;
    for (n=0;n<arrimg.length;n++){
        var lk=arrimg[n].getAttribute("link");
        if (lk!=null) arrimg[n].setAttribute("title",lk)
        arrimg[n].onclick=function(){
            if (this.getAttribute("link")!=null){
                if (this.getAttribute("target")!="_blank") window.location=(this.getAttribute("link"))
                else window.open(this.getAttribute("link"))
            }
        }
        arrimg[n].onmouseout=function(){smove=true;}
        arrimg[n].onmouseover=function(){smove=false;}
        arrimg[n].style.position="absolute";
        imgArr.push(arrimg[n]);
    }

    this.roundMove=function(){
        for (n=0;n<=pn-1;n++){
            var o=imgArr[n];
            var ta=Math.sin(d+ed*n),strFilter;
            if (ta<0) o.style.left=Math.cos(d+ed*n-pd)*r+x+"px";
            else o.style.left=Math.cos(d+ed*n+pd)*r+x+"px";
            o.style.top=ta*rh+rh+y+"px";
            var zoom=Math.abs(Math.sin((d+ed*n)/2+pi/4))*0.5+0.5;
            o.style.width=Math.abs(Math.cos(d+ed*n+pd)-Math.cos(d+ed*n-pd))*zoom*r+"px";
            o.style.height=zoom*h+"px";
            if (ta<0) {ta=(ta+1)*80+20;o.style.zIndex=0;}
            else {ta=100;o.style.zIndex=1}
            if (o.style.zIndex<=0) strFilter="FlipH(enabled:true)"
            else strFilter="FlipH(enabled:false)";
            strFilter=strFilter+" alpha(opacity="+ta+")";
            o.style.opacity=ta/100;
            o.style.filter=strFilter;
        }
        if (smove) d=d+dv;
    }
}
var imgs = new Array();
imgs[0] = "images/1.jpg";
imgs[1] = "images/2.jpg";
imgs[2] = "images/3.jpg";
imgs[3] = "images/2.jpg";

var bgcolor = new Array();
bgcolor[0] = "#1D5876";
bgcolor[1] = "#03435E";
bgcolor[2] = "#E2C2B5";
bgcolor[3] = "#0096BB";

var num = 1;
var max = 4;

function changeImg(){
	document.getElementById("banner_img").src=imgs[num-1];
	document.getElementById("box1").style.backgroundColor=bgcolor[num-1];
	var bul = document.getElementById("box1");
	var lis = bul.getElementsByTagName("li");
	//alert(lis.length);
	for(var i = 0;i<lis.length;i++){
		//lis[i].className="baiseli";
		lis[i].setAttribute("style","background:white");
		
	}
	//lis[num-1].className="chengseli";
	lis[num-1].setAttribute("style","background:#FF8C00");
	if(num >= max){
		num = 1;
	}else{
		num++;
	}
}
function stopImg(number){
	num = number;
	clearInterval(time);
	document.getElementById("banner_img").src = imgs[number-1];
	document.getElementById("box1").style.backgroundColor=bgcolor[number-1];
	var bul = document.getElementById("box1");
	var lis = bul.getElementsByTagName("li");
	//alert(lis.length);

	for(var i = 0;i<lis.length;i++){
		//lis[i].className="baiseli";
		lis[i].setAttribute("style","background:white");
	}
	//lis[number-1].className="chengseli";
	lis[num-1].setAttribute("style","background:#FF8C00");
}

function startImg(number){
	time = setInterval(changeImg,2000);
}

 //onmouseover="changeImgbg(3)" onmouseout="rebackImgbg(3)"

var time = setInterval(changeImg,2000);

function mySubmit(){
		//alert("你已经点击了1");
		var ff = document.getElementsByName('uploadFile');
		
		if(ff[0].type == "file" && ff[0].name=="uploadFile"&&ff[0].value==""){
			alert("请选择要上传的文件！");
			return false;
		}else{
			return true;
		}
		
	}

function myTestFileType(){
	alert("你已经点击了1");
	//var f = document.getElementsByName('fileTypeName');
	document.getElementById("hh").submit(); //onclick只是触发事件，但是不提交按钮 ，click则提交按钮
	var f2 = document.getElementsByName("fileName3")[1].value;
	alert(f2);
	alert("你已经点击了2");
	
	/*alert(f.length); // 6
	for(var i=0;i<f.length;i++){
		alert(f[i].alt);
	}*/
	
}
function myDownload(){
	alert("你已经点击了1");
	//var f = document.getElementsByName('fileTypeName');
	document.getElementById("hh").click(); //onclick只是触发事件，但是不提交按钮 ，click则提交按钮
	//var f2 = document.getElementsByName("fileName3")[1].value;
	//alert(f2);
	alert("你已经点击了2");
	
	/*alert(f.length); // 6
	for(var i=0;i<f.length;i++){
		alert(f[i].alt);
	}*/
	
}

function showTime(){
	var myDate = new Date();
	//var mm = myDate.toLocaleDateString();
	var mm = myDate.getFullYear()+"年"+(myDate.getMonth()+1)+"月"+myDate.getDate()+"日";
	//var p = document.getElementById("tt2").value;
	document.getElementById("tt3").innerHTML = mm;

	}