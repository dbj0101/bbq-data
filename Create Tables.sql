-- create schema bbq
-- go

drop table if exists bbq.Device
create table bbq.Device (
    ID int identity(1,1) primary KEY,
    deviceName varchar(50) not null,
    deviceBrandName varchar(50) not null,
    deviceTypeName varchar(50) not null,
    deviceDesc varchar(200)
)
go

drop table if exists bbq.ProbeMeasurement
drop table if exists bbq.Probe
create table bbq.Probe (
    ID int identity(1,1) primary KEY,
    probeName varchar(50) not null,
    probeDesc varchar(200),
    deviceID varchar(50) -- FOREIGN key REFERENCES bbq.Device(ID)
)
go

drop table if exists bbq.ProbeMeasurement
create table bbq.ProbeMeasurement (
    ID int identity(1,1) primary key,
    probeID int, -- FOREIGN key REFERENCES bbq.Probe(ID),
    [timeStamp] datetime,
    [value] decimal(18,2),
    [valueUnit] varchar(10)
)
go

drop table if exists bbq.SmokeCook
create table bbq.SmokeCook (
    ID int identity(1,1) primary key
)





