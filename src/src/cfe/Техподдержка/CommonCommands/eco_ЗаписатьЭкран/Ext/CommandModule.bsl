﻿
&НаКлиенте
Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
	//TODO:Нужно проверить какя ОС на клиенте.
	НачатьЗапускПриложения(Новый ОписаниеОповещения("ОкончаниеЗапускаПриложения", 
		ЭтотОбъект), "psr.exe", "%userprofile%/desktop", Ложь);
КонецПроцедуры

&НаКлиенте
Процедура ОкончаниеЗапускаПриложения(КодВозврата, ДополнительныеПараметры)

КонецПроцедуры // ОкончаниеЗапускаПриложения()
