#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ПрограммныйИнтерфейс

// Числовое значение ставки по перечислению
// 
// Параметры:
//  СтавкаНДС  - ПеречислениеСсылка.СтавкиНДС
// 
// Возвращаемое значение:
//  Число - Значение ставки
///
Функция ЗначениеСтавки(СтавкаНДС) Экспорт
	
	Если СтавкаНДС = Перечисления.СтавкиНДС.НДС0 Тогда
		Возврат 0;
	ИначеЕсли СтавкаНДС = Перечисления.СтавкиНДС.НДС10 Тогда
		Возврат 10;
	ИначеЕсли СтавкаНДС = Перечисления.СтавкиНДС.НДС20 Тогда
		Возврат 20;
	Иначе
		ВызватьИсключение "Ставка не поддерживается";
	КонецЕсли;
	
КонецФункции
#КонецОбласти

#КонецЕсли