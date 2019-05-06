export function time_off(date){
    let timeNow = new Date();

    let time = timeNow.getTime()-date.getTime();

    time =(time/1000);
    if(time < 60 )
    {
        return "Vừa xong";

    }
    else if(time >= 60 && time < 3600)
    {
        return "Khoảng "+Math.floor(time/60)+ " phút trước";
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