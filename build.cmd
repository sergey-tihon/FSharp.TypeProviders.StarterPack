@echo off
if not exist packages\FAKE\tools\Fake.exe ( 
  .nuget\nuget.exe install FAKE -OutputDirectory packages -ExcludeVersion
)
if not exist packages\NUnit.Runners\tools\nunit.exe ( 
  .nuget\nuget.exe install Nunit.Runners -OutputDirectory packages -ExcludeVersion
)

packages\FAKE\tools\FAKE.exe build.fsx %*
