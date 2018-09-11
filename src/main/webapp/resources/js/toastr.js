
$(function() {
    "use strict";
      $(".mnsjInf").click(function(){
    	  mnsjInf("Info");
     });

      $(".mnsjWar").click(function(){
    	  mnsjWar("Warn");
     });
      
      $(".mnsjSuc").click(function(){
    	  mnsjSuc("Succ");
     });

      $(".mnsjDan").click(function(){
    	  mnsjDan("Dang");
     });
});

function mnsjInf(msnj,tit){
	$.toast({
        heading: tit==null?"Información":tit,
        text: msnj,
        position: 'bottom-right',
        loaderBg:'#ff6849',
        icon: 'info',
        hideAfter: 3500, 
        stack: 6
      });
}

function mnsjWar(msnj,tit){
	$.toast({
        heading: tit==null?"Alerta":tit,
        text: msnj,
        position: 'bottom-right',
        loaderBg:'#ff6849',
        icon: 'warning',
        hideAfter: 3500, 
        stack: 6
      });
}

function mnsjSuc(msnj,tit){
	$.toast({
        heading: tit==null?"Éxito":tit,
        text: msnj,
        position: 'bottom-right',
        loaderBg:'#ff6849',
        icon: 'success',
        hideAfter: 3500, 
        stack: 6
      });
}

function mnsjDan(msnj,tit){
	$.toast({
        heading: tit==null?"Error":tit,
        text: msnj,
        position: 'bottom-right',
        loaderBg:'#ff6849',
        icon: 'error',
        hideAfter: 3500
        
      });
}
