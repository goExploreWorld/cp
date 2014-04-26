f:
cd F:\DATAMANAGE\cp\daletou
awk -f 1dltDelNumber.awk 1dltNumberData.csv
awk -f 2dltguanxi.awk 2dltData.csv
pause
cd F:\DATAMANAGE\cp\ssq
awk -f 1ssqDelNumber.awk 1ssqNumberData.csv
awk -f 2ssqguanxi.awk 2ssqData.csv
pause