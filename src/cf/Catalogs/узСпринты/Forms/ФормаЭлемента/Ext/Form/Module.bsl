﻿
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	ТЧЗадачи.Параметры.УстановитьЗначениеПараметра("Спринт",Объект.Ссылка);
	ТЧЗадачи.Параметры.УстановитьЗначениеПараметра("ЭтоНовый",Объект.Ссылка.Пустая());
	УстановитьВидимостьДоступность();
КонецПроцедуры

&НаСервере
Процедура УстановитьВидимостьДоступность()
	Элементы.Наименование.ТолькоПросмотр = Истина;
	Элементы.ДатаНачала.ТолькоПросмотр = Истина;
	Элементы.ДатаОкончания.ТолькоПросмотр = Истина;
	Элементы.ТЧЗадачи.ТолькоПросмотр = Истина;	
	Если НЕ Объект.СпринтЗавершен Тогда
		Элементы.Наименование.ТолькоПросмотр = Ложь;
		Элементы.ДатаНачала.ТолькоПросмотр = Ложь;
		Элементы.ДатаОкончания.ТолькоПросмотр = Ложь;
		Элементы.ТЧЗадачи.ТолькоПросмотр = Ложь;		
	Конецесли;
КонецПроцедуры 

&НаКлиенте
Процедура СпринтЗавершенПриИзменении(Элемент)
	УстановитьВидимостьДоступность();
КонецПроцедуры

&НаКлиенте
Процедура КомандаОбновить(Команда)
	Элементы.ТЧЗадачи.Обновить();
КонецПроцедуры

&НаСервере
Процедура ПередЗаписьюНаСервере(Отказ, ТекущийОбъект, ПараметрыЗаписи)
	ТекущийОбъект.ЦветСпринта = Новый ХранилищеЗначения(ЦветСпринтаНаФорме);
КонецПроцедуры

&НаСервере
Процедура ПриЧтенииНаСервере(ТекущийОбъект)
	ЦветСпринтаНаФорме = ТекущийОбъект.ЦветСпринта.Получить();
КонецПроцедуры
