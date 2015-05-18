--[[
	package.loaders
	是一个被require用来控制如何加载模块的表
	在这个表中的每一条记录是一个搜索函数。当寻找一个模块时，require函数以升序的方式调用这些搜索函数的每一个，用模块名字（传给require函数的参数）作为它唯一的参数。这个函数返回另外一个函数（模块加载项）或者一个解释它为什么不能发现这个模块的字符串(或者返回nil，当它什么都不做时)。lua用四个函数初始化这个表。
	第一个搜索函数在package.preload表中简单寻找一个加载模块。
	第二个搜索函数寻找一个加载模块作为lua库，用package.path中存储的路径。这个路径是一个被分号分隔的模板序列。在每个模板中，这个搜索函数将通过filename改变每一个问号标记，
--]]