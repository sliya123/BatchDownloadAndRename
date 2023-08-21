@echo off

setlocal enabledelayedexpansion
REM 设置文件下载的位置
REM set "folder_path=F:\C_Lirbray\"
set "folder_path=.\imgs\"
set "file_count=0"
set "file_name=.jpg"

REM 判断文件夹是否存在，如果不存在，则创建文件夹
if not exist "%folder_path%" (
    mkdir "%folder_path%"
    echo Folder created: %folder_path%
)

for /f %%i in (urls.txt) do (
	set /a "file_count+=1" rem 使用 set /a 命令来进行算术运算
	echo !file_count!
	echo 输出文件夹: %folder_path%!file_count!%file_name%
    wget %%i -O %folder_path%!file_count!%file_name%
)

endlocal
REM 遍历 urls.txt 中的数据，将 , 前的值赋给 %%j， , 后的值赋给 %%i，在将%folder_path%于%%i的值拼接
REM for /f "delims=, tokens=1,2" %%i in (urls.txt) do (
	 REM echo "输出文件夹：" %folder_path%%%i
    REM wget %%j -O %folder_path%%%i
REM )


