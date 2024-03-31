-- create schema bbq
-- go

drop table if exists bbq.Device
create table bbq.Device (
    pKey int identity(1,1) primary KEY,
    deviceName varchar(50) not null,
    deviceBrandName varchar(50) not null,
    deviceTypeName varchar(50) not null,
    deviceDesc varchar(200)
)
go

drop table if exists bbq.ProbeMeasurement
drop table if exists bbq.Probe
create table bbq.Probe (
    pKey int identity(1,1) primary KEY,
    probeName varchar(50) not null,
    probeDesc varchar(200),
    deviceKey varchar(50) -- FOREIGN key REFERENCES bbq.Device(pKey)
)
go

drop table if exists bbq.ProbeMeasurement
create table bbq.ProbeMeasurement (
    pKey int identity(1,1) primary key,
    probeKey int, -- FOREIGN key REFERENCES bbq.Probe(pKey),
    [timeStamp] datetime,
    [value] decimal(18,2),
    [valueUnit] varchar(10)
)
go





