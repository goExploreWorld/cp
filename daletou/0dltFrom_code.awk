BEGIN {
FS="[<>]"
printf("     No, No1, No2, No3, No4, No5, No6, No7,\n") > "dltresult.csv"
}

{
	if ($0 ~/\/lottery\/draw\/view\/1/)
	{
		#print($0) > "ssqresult.csv"	
	
		if ($3 ~/[0-9]+/)
		{
			printf("%5d,", $3) > "dltresult.csv"
			i = 0
		}
	}	

	if ($0 ~/<td class="td3"><span class="result">                        <span class="ball_1">/)
	{
		printf("%4d,", $7) > "dltresult.csv"
		next
	}
	
	if ($0 ~/<span class="ball_1">/) 
	{
		#print($0) > "ssqresult.csv"
		printf("%4d,", $3) > "dltresult.csv"
		{
			
		}
	}	
	if ($0 ~/ball_2/) 
	{
		#print($0) > "ssqresult.csv"
		printf("%4d", $3) > "dltresult.csv"
		i++
		if (i == 2)
		{
			printf("\n") > "dltresult.csv"
		}

	}	
}