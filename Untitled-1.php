function getprice(mqty)
{
total_price=0;
mqty=Number(mqty);
if(mqty>=1 && mqty<=5)
{total_price= 0 + ((mqty + 1 - 1)* 215.00);}
if(mqty>=6 && mqty<=50)
{total_price= 1075 + ((mqty + 1 - 6)* 195.00);}
if(mqty>=51 && mqty<=100)
{total_price= 9850 + ((mqty + 1 - 51)* 175.00);}
if(mqty>=101 && mqty<=250)
{total_price= 18600 + ((mqty + 1 - 101)* 155.00);}
if (total_price==0) 
{/*alert('Dont know price!');*/}
else 
{/*alert(total_price);*/} 
return total_price/mqty;
}