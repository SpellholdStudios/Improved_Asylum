@echo off
cd override
oggdec r#*.ogg
del r#*.ogg
del oggdec.exe
tisunpack r#*.tiz
del tisunpack.exe
cd..
