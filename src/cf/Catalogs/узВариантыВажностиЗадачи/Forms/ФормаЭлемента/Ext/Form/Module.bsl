﻿
&НаСервере
Процедура ПередЗаписьюНаСервере(Отказ, ТекущийОбъект, ПараметрыЗаписи)
	ТекущийОбъект.ЦветВажности = Новый ХранилищеЗначения(ЦветВажностиНаФорме);
КонецПроцедуры

&НаСервере
Процедура ПриЧтенииНаСервере(ТекущийОбъект)
	ЦветВажностиНаФорме = ТекущийОбъект.ЦветВажности.Получить();
КонецПроцедуры
