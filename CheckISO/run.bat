@rem �ݶǤJ%1 �OtargetDir
@rem �ݶǤJ%2 shareName
@rem �ݶǤJ%3 pcName
@rem �ݶǤJ%4 id
@rem �ݶǤJ%5 pass

set DATESTAMP=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%
echo DATESTAMP


@rem ISO�ɳ��O�q\\10.40.40.248�P�B��U�a��
@rem �]�w\\10.40.40.248��Z:

set SourceDir="\\10.40.40.248"
net use Z: /DELETE
net use %SourceDir% /DELETE
net use Z: %SourceDir%\iso /PERSISTENT:NO @WSX3edc /USER:iso


@rem �Ӭd�x�_���D��
@rem ���]�w�x�_�D������m
set TargetLocation="�x�_"
set TargetDir="\\10.20.5.19"
net use Y: /DELETE
net use %targetDir% /DELETE
net use Y: %targetDir%\DSCSoftware /PERSISTENT:NO dsc /USER:dsc
@rem �d�d�d�d�d�d�d
Nant CompareFiles -D:arg.targetFile=%targetDir% -D:arg.targetLocation=%targetLocation% > �x�_%DATESTAMP%.log


@rem �Ӭd��骺�D��
@rem ���]�w���D������m
set TargetLocation="���"
set TargetDir="\\10.30.0.231"
net use Y: /DELETE
net use %targetDir% /DELETE
net use Y: %targetDir%\iso /PERSISTENT:NO sync!QAZ2wsx /USER:sync
@rem �d�d�d�d�d�d�d
Nant CompareFiles -D:arg.targetFile=%targetDir% -D:arg.targetLocation=%targetLocation% > ���%DATESTAMP%.log

@rem �Ӭd�s�˪��D��
@rem ���]�w�s�˥D������m
set TargetLocation="�s��"
set TargetDir="\\10.35.0.231"
net use Y: /DELETE
net use %targetDir% /DELETE
net use Y: %targetDir%\iso /PERSISTENT:NO sync!QAZ2wsx /USER:sync
@rem �d�d�d�d�d�d�d
Nant CompareFiles -D:arg.targetFile=%targetDir% -D:arg.targetLocation=%targetLocation% >�s��%DATESTAMP%.log

@rem �Ӭd�x�����D��
@rem ���]�w�x���D������m
set TargetLocation="�x��"
set TargetDir="\\10.45.121.231  "
net use Y: /DELETE
net use %targetDir% /DELETE
net use Y: %targetDir%\iso /PERSISTENT:NO sync!QAZ2wsx /USER:sync
@rem �d�d�d�d�d�d�d
Nant CompareFiles -D:arg.targetFile=%targetDir% -D:arg.targetLocation=%targetLocation% > �x��%DATESTAMP%.log

@rem �Ӭd�x�n���D��
@rem ���]�w�x�n�D������m
set TargetLocation="�x�n"
set TargetDir="\\10.60.0.231"
net use Y: /DELETE
net use %targetDir% /DELETE
net use Y: %targetDir%\iso /PERSISTENT:NO sync!QAZ2wsx /USER:sync
@rem �d�d�d�d�d�d�d
Nant CompareFiles -D:arg.targetFile=%targetDir% -D:arg.targetLocation=%targetLocation% > �x�n%DATESTAMP%.log

@rem �Ӭd�������D��
@rem ���]�w�����D������m
set TargetLocation="����"
set TargetDir="\\10.70.0.231"
net use Y: /DELETE
net use %targetDir% /DELETE
net use Y: %targetDir%\iso /PERSISTENT:NO sync!QAZ2wsx /USER:sync
@rem �d�d�d�d�d�d�d
Nant CompareFiles -D:arg.targetFile=%targetDir% -D:arg.targetLocation=%targetLocation% > ����%DATESTAMP%.log



@rem �d���n�M��
net use Y: /DELETE
net use %targetDir% /DELETE