
#Область ПрограммныйИнтерфейс

// Формирует текст алгоритма в зависимости от параметров
// 
// Параметры:
//  ИмяМетода - Строка - Имя метода
//  Параметры - Неопределено, Массив из Произвольный - Параметры
// 
// Возвращаемое значение:
//  Строка - Текст алгоритма
Функция ТекстАлгоритма(ИмяМетода, Параметры = Неопределено) Экспорт
	
	СтрокиПараметров = Новый Массив;
	
	Если ТипЗнч(Параметры) = Тип("Массив")
		И Параметры.Количество() Тогда
		Для НомерПараметра = 0 По Параметры.ВГраница() Цикл
			СтрокиПараметров.Добавить(СтрШаблон("Параметры[%1]", НомерПараметра));
		КонецЦикла;
	КонецЕсли;
	
	Возврат СтрШаблон("%1(%2)", ИмяМетода, СтрСоединить(СтрокиПараметров, ", "));
		
КонецФункции

// Экспортный прокси для тестирования неэкспортной процедуры
// 
// Параметры:
//  ИмяМетода - Строка - Полное имя метода
//  Параметры - Неопределено, Массив из Произвольный - Передаваемые параметры
//@skip-check extension-method-prefix
Процедура ВыполнитьПроцедуру(ИмяМетода, Параметры = Неопределено) Экспорт

	//@skip-check server-execution-safe-mode
	Выполнить(АК_ОбщегоНазначения.ТекстАлгоритма(ИмяМетода, Параметры));
	
КонецПроцедуры

// Экспортный прокси для тестирования неэкспортной функции
// 
// Параметры:
//  ИмяМетода - Строка - Полное имя метода
//  Параметры - Неопределено, Массив из Произвольный - Передаваемые параметры
//  ВозвращатьЗначение - Булево - Передаваемые параметры
// 
// Возвращаемое значение:
//  Произвольный - результат выполнения функции
//@skip-check extension-method-prefix
Функция ВыполнитьФункцию(ИмяМетода, Параметры = Неопределено) Экспорт

	//@skip-check server-execution-safe-mode
	Возврат Вычислить(АК_ОбщегоНазначения.ТекстАлгоритма(ИмяМетода, Параметры));
	
КонецФункции
	
#КонецОбласти

