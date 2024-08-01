TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================
# Build the IOC application

PROD_IOC = keithley6221App

# $(PROD_IOC).dbd will be created and installed
DBD += $(PROD_IOC).dbd

# $(PROD_IOC).dbd will be made up from these files:
$(PROD_IOC)_DBD += base.dbd
$(PROD_IOC)_DBD += asyn.dbd
$(PROD_IOC)_DBD += drvAsynIPPort.dbd
$(PROD_IOC)_DBD += calc.dbd calcSupport.dbd
$(PROD_IOC)_DBD += stream.dbd

# Add all the support libraries needed by this IOC
$(PROD_IOC)_LIBS += asyn calc stream

# K6221App_registerRecordDeviceDriver.cpp derives from sydor.dbd
$(PROD_IOC)_SRCS += $(PROD_IOC)_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
$(PROD_IOC)_SRCS_DEFAULT += $(PROD_IOC)Main.cpp

# Finally link to the EPICS Base libraries
$(PROD_IOC)_LIBS += $(EPICS_BASE_IOC_LIBS)

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
