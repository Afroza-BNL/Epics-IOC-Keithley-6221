#!../../bin/linux-x86_64/keithley6221App

< /epics/common/xf31id1-ioc1-netsetup.cmd

< envPaths

epicsEnvSet("STREAM_PROTOCOL_PATH", ".:../../keithley6221App/src")

dbLoadDatabase("$(TOP)/dbd/keithley6221App.dbd", 0, 0)
keithley6221App_registerRecordDeviceDriver(pdbbase) 


drvAsynIPPortConfigure("KCS1", "10.69.58.110:4001", 0, 0, 0)

dbLoadRecords("$(TOP)/db/asynRecord.db", "P=XF:31ID1-ES{K6221-CS:1}, R=Asyn, PORT=KCS1, ADDR=0, OMAX=0, IMAX=0")
dbLoadRecords("$(TOP)/db/K6221.db", "P=XF:31ID1-ES, R={K6221-CS:1}, PORT=KCS1")

iocInit()

date
