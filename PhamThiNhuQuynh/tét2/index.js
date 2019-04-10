function time_off(date){
    

    var timeNow = new Date();

    var time = timeNow.getTime()-date.getTime();

    time =(time/1000);
    if(time < 60 )
    {
        return "vừa xong";

    }
    else if(time >= 60 && time < 3600)
    {
        return "Khoảng"+Math.floor(time/60)+ " phút trước";
    }
    
    else if((time)/3600 >=1  && (time)/3600 < 24)
    {
        return "Khoảng " +Math.floor(time/3600)+" giờ trước";
    }
    else if((time)/86400 >=1 && (time)/86400 <= 7 )
    {
        return "Khoảng "+ Math.floor(time/86400)+ " ngày trước";
    }
    else{
        return date.getDate()+" Th"+(date.getMonth()+1)+", "+date.getFullYear()+" lúc "+date.getHours()+":"+date.getMinutes();
    }

}

var date = new Date();
date.setDate(01);
date.setMonth(03);
date.setFullYear(2019);
date.setHours(12);
date.setMinutes(05);
date.setSeconds(10);
date.setMilliseconds(120);

var demo = time_off(date);
console.log(demo);
