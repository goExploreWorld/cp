BEGIN {
FS="[<>]"
printf("   No, No1, No2, No3, No4, No5, No6, No7,\n") > "result.csv"
}

{
	if ($0 ~/<td align="center">/) 
	{
		#print($0) > "result.csv"	
		
		if ($3 ~/[0-9]+/)
		{
			printf("%5d,", $3) > "result.csv"
			i = 0
		}
	}	

	if ($0 ~/chartBall01/) 
	{
		#print($0) > "result.csv"
		printf("%4d,", $3) > "result.csv"
		{
			
		}
	}	
	if ($0 ~/chartBall02/) 
	{
		#print($0) > "result.csv"
		printf("%4d,", $3) > "result.csv"
		i++
		if (i == 2)
		{
			printf("\n") > "result.csv"
		}

	}	
}