# Quote of the Day — Цитата дня

Приложение показывает случайную мотивирующую цитату при нажатии кнопки. Тема: мотивация и вдохновение.

## Автор
Перехрест [Ваше Имя], группа [Ваша Группа], дата сдачи: [Дата]

## Стек и версии
- Flutter: 3.47.5 
- Dart: 3.9.0 
- Платформа: Web (Chrome)
- IDE: VS Code

## Скриншот
![Скриншот приложения](img/step6.png)

## Структура проекта
- `lib/main.dart` — точка входа, MaterialApp
- `lib/quote_data.dart` — модель Quote, список цитат, функция случайного выбора
- `lib/gradient_background.dart` — StatelessWidget с градиентным фоном
- `lib/quote_card.dart` — StatelessWidget  цитаты с изображением
- `lib/quote_screen.dart` — StatefulWidget главный экран с кнопкой

## Что изучили 
Создание собственных StatelessWidget и передача данных через параметры конструктора.

Использование StatefulWidget и метода setState() для динамического обновления интерфейса.

Работа с градиентами (LinearGradient) для создания кастомного фона.

Подключение и корректное отображение локальных изображений (assets) через файл pubspec.yaml.

Использование генератора случайных чисел (Random) из библиотеки dart:math.

Разбивка кода на отдельные логические файлы для поддержания чистоты архитектуры.

Оформление проекта с помощью системы контроля версий Git и платформы GitHub.


## Как запустить
```bash
git clone <https://github.com/Alexandraa19/Flutter_Lab06.git>
cd quote_app_perekhrest
flutter pub get
flutter run -d chrome
