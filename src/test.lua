функция создать_метатип(опред)
	возврат опред
конец

функция зарегистрировать_тип(тип, имя_класса)

конец


класс = [[ "класс" имя_класса:имя 
	":" ? базовые_классы:(имя*",") 
	члены_класса:(блок определение_функции / определение_переменной )
]]

локал тип = создать_метатип{ 
	вызов_поля = функция(я, имя, ...)
		локал член = члены_класса.симтаб[имя]
		если член == нуль тогда 
			ошибка()
		иначеесли член.род == "функция" тогда 
			возврат код_вызова_функции(имя_класса.."__"..имя, я, ...)
		иначеесли член.род == "переменная" тогда 
			ошибка"вызов свойства как метода"
		конец
	конец,

	запись_значения_поля = функция(я, имя, значение)
		локал член = члены_класса.симтаб[имя]
		если член == нуль тогда 
			ошибка()
		иначеесли член.род == "функция" тогда 
			ошибка"присваивание методу"
		иначеесли член.род == "переменная" тогда 
			возврат код_присваивания(код_поле_структуры(я, имя), значение)
		конец
	конец,

	чтение_значения_поля = функция(я, имя)
		локал член = члены_класса.симтаб[имя]
		если член == нуль тогда 
			ошибка()
		иначеесли член.род == "функция" тогда 
			ошибка"чтение метода"
		иначеесли член.род == "переменная" тогда 
			возврат код_поле_структуры(я, имя)
		конец
	конец,

	реальное_описание_типа = функция()
		локал свойства = {}
		для н, св из pairs(члены_класса.симтаб) начало
			если св.род == "переменная" тогда свойства[н] = св.тип конец
		конец
		возврат код_описание_типа_структуры(свойства)
	конец,

	
}	

зарегистрировать_тип(тип, имя_класса)





-- 
-- 
-- mixin PoweredDevice{
-- 	int is_pwr_on;
-- 	public:
-- 		void power_on (void){ is_pwr_on=1; }
-- 		void power_off(void){ is_pwr_on=0; }
-- 		int power_state(void){ return is_pwr_on; }		
-- };
--  
-- class Scanner : public PoweredDevice{
-- 	public:
-- 		image scan();
-- };
--  
-- class Printer : public PoweredDevice{
-- 	public:
-- 		void print(document doc){ print_raw(doc); }
-- };
--  
-- class MFU : public Printer, public Scanner
-- {
--     int fieldD;
-- };
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 


-- утв(ложь)

печать"привет мир"

печать(ложь, истина или ложь, истина и 666)

-- строка=вв.ввод:читать('л')
-- печать("строка:", строка)
-- 
-- число=вв.ввод:читать('н')
-- печать("число:", число)

класс1 = [[класс "cnh" .	""x.. ddd44 яя22 5554"класс" ... --
@macro1 (5, 8)]]
print(класс1)
итер_ток = класс1:токениз("")
print(итер_ток)
prev_s = nil
for l,s,b,e in итер_ток do 
	
	if prev_s=='@' and l=='id' then
		print('macros:', s) 
		local lev = -1
		local arg, args = '', {}
		for l,s in итер_ток do
			arg = arg .. s
			if s=='(' then lev=lev+1;
			elseif s==')' then if lev==0 then table.insert(args, arg); arg = ''; break; else lev=lev-1; end
			elseif s==',' and lev==0 then table.insert(args, arg); arg = '';  
			end
		end

печать(table.concat(args, ', '))

	end
	prev_s = s
end
ос.выход()

файл = вв.построчно("test.lua1", "r")
весьфайл=файл:читать('в')
печать("весь файл", весьфайл)


-- os.execute'chcp 65001'
print'привет мир'
print'\208\191\209\128\208\184\208\178\208\181\209\130'
_G['\x5F\xD0\x9E\xD0\x9A\xD0\xA0']=_G
_ОКР['печать']('\208\191\209\128\208\184\208\178\208\181\209\130')
os.execute'chcp 1251'
print'\xF4\xF3\xED\xEA\xF6\xE8\xFF'

-- печать=print
печать'\208\191\209\128\208\184\208\178\208\181\209\130'
печать'"\150" "\208"'
-- локал 

функция таблица(c)
	возврат {}
конец

функция тип(арг)
	возврат type(арг)
конец

мт = {}
функция мт.__новыйид(окр, арг)
	если тип(арг)=='table' тогда
		локал т = {}
		for k,v in pairs(getmetatable(окр) or {}) do
			if k=='__index' then 
				т[k] = function(r, k) return rawget(арг, k) or окр[k] end
			elseif k=='__newindex' then
				т[k] = function(r, k, v) арг[k] = v end
			else
				т[k] = v
			end
		end
		т.__index = function(r, k) return rawget(арг, k) or окр[k] end 
		т.__newindex = function(r, k, v) print(r,k,v) арг[k] = v end
		возврат setmetatable({}, т), арг
	конец
конец
локал функции
_G, функции = мт.__новыйид(_G, таблица())
local v=666
функция мт:__add( а, б )
конец
local vv=666
do
local vvv=777
-- print(debug.getupvalue(-1, 1), debug.getlocal(1, 1))
end
функция разбор_строки(c)
-- for i=128,191 do print(i, '"'..c..string.char(i)..'"') end




конец
разбор_строки''
разбор_строки"\208"
tt=777
-- 
-- функция(шаблон) 
-- конец)

for c, i in pairs(функции) do print(c, i) end



-- for i=32,191 do print(i, '`'..string.char(i)..'`', '"\208'..string.char(i)..'"') end




-- 
-- 
-- печать(require"луахмл")
-- 
-- 
--  ос.выход()
-- 
-- 
-- 
-- 
-- печать('os.устлокаль()', ос.устлокаль())
-- ос.устлокаль('ru', 'all')
-- печать('os.устлокаль()', ос.устлокаль())
-- ос.выполнить'chcp'
-- 
-- ос.выполнить'@chcp 1251'
-- ллл=9
-- 
-- кон={}
-- кон.печать=печать
-- кон.печать'ллл='
-- печать(ллл)
-- печать(_окр, _ВЕРСИЯ)
-- печать(_окр==_g, _версия==_version)
-- печать(тип(_версия), #_окр)
-- если _версия!="луа 5.3" тогда
-- 	печать"версия - ок"
-- иначе
-- 	печать"версия - сбой"
-- конец
-- 
-- локал фмт = "%-20с: %с %4б"
-- для к,з из пары(_окр) начало
-- 	печать(фмт:формат((к),встроку(з), (";"):байт()))
-- конец
-- 
var = 45;   
если var тогда 
  -- локал v = var; 
  печать(v);   
конец -- всё, var больше не имеет значения v
счетчик=10
пока счетчик>0 начало
	печать('счетчик', счетчик)
	счетчик=счетчик-1
конец