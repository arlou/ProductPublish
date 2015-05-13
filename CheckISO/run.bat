@rem 需傳入%1 是targetDir
@rem 需傳入%2 shareName
@rem 需傳入%3 pcName
@rem 需傳入%4 id
@rem 需傳入%5 pass

set DATESTAMP=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%
echo DATESTAMP


@rem ISO檔都是從\\10.40.40.248同步到各地的
@rem 設定\\10.40.40.248為Z:

set SourceDir="\\10.40.40.248"
net use Z: /DELETE
net use %SourceDir% /DELETE
net use Z: %SourceDir%\iso /PERSISTENT:NO @WSX3edc /USER:iso


@rem 來查台北的主機
@rem 先設定台北主機的位置
set TargetLocation="台北"
set TargetDir="\\10.20.5.19"
net use Y: /DELETE
net use %targetDir% /DELETE
net use Y: %targetDir%\DSCSoftware /PERSISTENT:NO dsc /USER:dsc
@rem 查查查查查查查
Nant CompareFiles -D:arg.targetFile=%targetDir% -D:arg.targetLocation=%targetLocation% > 台北%DATESTAMP%.log


@rem 來查桃園的主機
@rem 先設定桃園主機的位置
set TargetLocation="桃園"
set TargetDir="\\10.30.0.231"
net use Y: /DELETE
net use %targetDir% /DELETE
net use Y: %targetDir%\iso /PERSISTENT:NO sync!QAZ2wsx /USER:sync
@rem 查查查查查查查
Nant CompareFiles -D:arg.targetFile=%targetDir% -D:arg.targetLocation=%targetLocation% > 桃園%DATESTAMP%.log

@rem 來查新竹的主機
@rem 先設定新竹主機的位置
set TargetLocation="新竹"
set TargetDir="\\10.35.0.231"
net use Y: /DELETE
net use %targetDir% /DELETE
net use Y: %targetDir%\iso /PERSISTENT:NO sync!QAZ2wsx /USER:sync
@rem 查查查查查查查
Nant CompareFiles -D:arg.targetFile=%targetDir% -D:arg.targetLocation=%targetLocation% >新竹%DATESTAMP%.log

@rem 來查台中的主機
@rem 先設定台中主機的位置
set TargetLocation="台中"
set TargetDir="\\10.45.121.231  "
net use Y: /DELETE
net use %targetDir% /DELETE
net use Y: %targetDir%\iso /PERSISTENT:NO sync!QAZ2wsx /USER:sync
@rem 查查查查查查查
Nant CompareFiles -D:arg.targetFile=%targetDir% -D:arg.targetLocation=%targetLocation% > 台中%DATESTAMP%.log

@rem 來查台南的主機
@rem 先設定台南主機的位置
set TargetLocation="台南"
set TargetDir="\\10.60.0.231"
net use Y: /DELETE
net use %targetDir% /DELETE
net use Y: %targetDir%\iso /PERSISTENT:NO sync!QAZ2wsx /USER:sync
@rem 查查查查查查查
Nant CompareFiles -D:arg.targetFile=%targetDir% -D:arg.targetLocation=%targetLocation% > 台南%DATESTAMP%.log

@rem 來查高雄的主機
@rem 先設定高雄主機的位置
set TargetLocation="高雄"
set TargetDir="\\10.70.0.231"
net use Y: /DELETE
net use %targetDir% /DELETE
net use Y: %targetDir%\iso /PERSISTENT:NO sync!QAZ2wsx /USER:sync
@rem 查查查查查查查
Nant CompareFiles -D:arg.targetFile=%targetDir% -D:arg.targetLocation=%targetLocation% > 高雄%DATESTAMP%.log



@rem 查完要清掉
net use Y: /DELETE
net use %targetDir% /DELETE