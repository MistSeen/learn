#!/usr/bin/lua

local func=require("a")
local mytest=func.test
local FuncEnv = setmetatable({}, {__index = _G})
setfenv(mytest,FuncEnv)--�ȼ���setenv(func,FuncEnv);func();
mytest()--FuncEnv�����µ�ģ���������������еĺ�����,��ʵ��lua�ڲ���model������ߺ���Ҳ���õ����ԭ��
