BEGIN {
FS="[, ]+"
}

{
	for (i = 1; i <= NF; i++)
	{
		data[NR,i] = $i
	}
}

END {
	for(i = 2; i <=NF ; i++)
	{
		if(i>2)
		{
			printf("\n") > "2dltData.csv"
		}
		for(j=2;j<=NR;j++)
		{
			printf("%3d,"),data[j,i] > "2dltData.csv"
		}
	}
}