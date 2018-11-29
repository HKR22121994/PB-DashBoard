$PBExportHeader$dashboard.sra
$PBExportComments$Generated Application Object
forward
global type dashboard from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type dashboard from application
string appname = "dashboard"
end type
global dashboard dashboard

on dashboard.create
appname="dashboard"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on dashboard.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_dashboard)
end event

