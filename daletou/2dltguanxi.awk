BEGIN {
FS="[, ]+"
}

{
	for (i = 1; i <= NF; i++)
	{
		data[NR,$i,$(i+1)]++
	}
}

END {
	for(i = 1; i <=35 ; i++)
	{		
		printf("\n") > "3dltResult.csv"
		for(j=1;j<=35;j++)
		{
			for(k = 1; k < 8 ; k++ )
			{
				printf("\n") > "3dltResult.csv"
				printf("Ball[%1d],Up:%2d,Down:%2d,Total:%3d"),k,i,j,data[k,i,j] > "3dltResult.csv"			
			}

		}
	}
}