@echo off

setlocal enabledelayedexpansion
REM �����ļ����ص�λ��
REM set "folder_path=F:\C_Lirbray\"
set "folder_path=.\imgs\"
set "file_count=0"
set "file_name=.jpg"

REM �ж��ļ����Ƿ���ڣ���������ڣ��򴴽��ļ���
if not exist "%folder_path%" (
    mkdir "%folder_path%"
    echo Folder created: %folder_path%
)

for /f %%i in (urls.txt) do (
	set /a "file_count+=1" rem ʹ�� set /a ������������������
	echo !file_count!
	echo ����ļ���: %folder_path%!file_count!%file_name%
    wget %%i -O %folder_path%!file_count!%file_name%
)

endlocal
REM ���� urls.txt �е����ݣ��� , ǰ��ֵ���� %%j�� , ���ֵ���� %%i���ڽ�%folder_path%��%%i��ֵƴ��
REM for /f "delims=, tokens=1,2" %%i in (urls.txt) do (
	 REM echo "����ļ��У�" %folder_path%%%i
    REM wget %%j -O %folder_path%%%i
REM )


