function time_off(date){
    

    var timeNow = new Date();

    var time = timeNow.getTime()-date.getTime();

    console.log(timeNow.toDateString());
    console.log(date.toDateString());
    console.log(time);
    time =(time/1000);
    console.log(time);
    if(time < 60 )
    {
        return "vừa xong";

    }
    else if(time >= 60 && time < 3600)
    {
        return "Khoảng"+Math.floor(time/60)+ "phút";
    }
    
    else if((time)/3600 >=1  && (time)/3600 < 24)
    {
        return "Khoảng " +Math.floor(time/3600)+" giờ";
    }
    else if((time)/86400 >=1 && (time)/86400 <= 7 )
    {
        return "Khoảng "+ Math.floor(time/86400)+ " ngày";
    }
    else{
        return date.getDate()+" Th"+(date.getMonth()+1)+", "+date.getFullYear()+" luc "+date.getHours()+":"+date.getMinutes();
    }

}

var date = new Date();
date.setDate(06);
date.setMonth(02);
date.setFullYear(2019);
date.setHours(15);
date.setMinutes(05);
date.setSeconds(10);
date.setMilliseconds(120);

var demo = time_off(date);
console.log(demo);