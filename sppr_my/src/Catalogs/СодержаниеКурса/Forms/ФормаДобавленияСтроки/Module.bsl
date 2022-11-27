
&НаКлиенте
Процедура ПриЗакрытии(ЗавершениеРаботы)
	Структура = Новый Структура;
	Структура.Вставить("Комментарий", Комментарий);
	Структура.Вставить("СсылкаФайл", СсылкаФайл);
	Оповестить("ДобавитьСтрокуКомментарииИФайлы", Структура);
КонецПроцедуры

&НаКлиенте
Процедура СсылкаФайлНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
	СтандартнаяОбработка = Ложь;;
	ПараметрыФормы  = Новый Структура;
	Отбор = Новый Структура;
	Отбор.Вставить("ВладелецФайла", ЭтаФорма.ВладелецФормы.Объект.Ссылка);
	ПараметрыФормы .Вставить("Отбор", Отбор);

	Оповещение = Новый ОписаниеОповещения("ОткрытьПараметрыЗавершение", ЭтотОбъект);
	ОткрытьФорму("Справочник.СодержаниеКурсаФайлы.ФормаВыбора",ПараметрыФормы , , , , ,Оповещение , );

КонецПроцедуры

&НаКлиенте
Процедура ОткрытьПараметрыЗавершение(Результат, ДополнительныеПараметры) Экспорт
	СсылкаФайл = Результат;	
КонецПроцедуры