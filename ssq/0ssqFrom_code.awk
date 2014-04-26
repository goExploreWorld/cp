BEGIN {
FS="[<>]"
printf("     No, No1, No2, No3, No4, No5, No6, No7,\n") > "ssqresult.csv"
}

{
	if ($0 ~/\/lottery\/draw\/view\/50/)
	{
		#print($0) > "ssqresult.csv"	
	
		if ($3 ~/[0-9]+/)
		{
			printf("%5d,", $3) > "ssqresult.csv"
			i = 0
		}
	}	

	if ($0 ~/<td class="td3"><span class="result">	<span class="ball_1">/)
	{
		printf("%4d,", $7) > "ssqresult.csv"
		next
	}
	
	if ($0 ~/<span class="ball_1">/) 
	{
		#print($0) > "ssqresult.csv"
		printf("%4d,", $3) > "ssqresult.csv"
		{
			
		}
	}	
	if ($0 ~/ball_2/) 
	{
		#print($0) > "ssqresult.csv"
		printf("%4d", $3) > "ssqresult.csv"
		i++
		if (i == 1)
		{
			printf("\n") > "ssqresult.csv"
		}

	}	
}