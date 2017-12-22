@echo off

nssm install solr8983 C:\tools\solr-6.3.0\bin\solr.cmd -f -p 8983
nssm start solr8983