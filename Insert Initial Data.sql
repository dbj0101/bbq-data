insert into bbq.Device (deviceName, deviceBrandName, deviceTypeName)
select 'DB Inkbird 4 Port', 'Inkbird', 'IBBQ-4T'

insert into bbq.Probe(probeName, probeDesc, deviceKey)
select 'Red', null, (select max(pKey) from bbq.Device where deviceTypeName='IBBQ-4T')
union select 'Yellow', null, (select max(pKey) from bbq.Device where deviceTypeName='IBBQ-4T')
union select 'Green', null, (select max(pKey) from bbq.Device where deviceTypeName='IBBQ-4T')
union select 'Blue', null, (select max(pKey) from bbq.Device where deviceTypeName='IBBQ-4T')




