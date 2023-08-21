# BatchDownloadAndRename



根据输入的url批量下载，并且重命名



1. [下载wget](https://eternallybored.org/misc/wget/)

	2. 将url地址放入 `url.txt` 文件夹下。
	2. 双击运行 `go.bat`文件。



注意：

如果需要修改文件重命名规则和文件下载的位置。可以修改`go.bat`文件中的 `folder_path`，`file_count`，`file_name`三个变量的值。

```bat
set "folder_path=.\imgs\" rem 文件路径
set "file_count=0" rem 文件名命名
set "file_name=.jpg" rem 文件后缀名
```

