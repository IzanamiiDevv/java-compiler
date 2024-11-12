@echo off
::COMPILE::
javac -d ./../bin ./../%~1.java
java -cp ./../bin %~1
::END::
