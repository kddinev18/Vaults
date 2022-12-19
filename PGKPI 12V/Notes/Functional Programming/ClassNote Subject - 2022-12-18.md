---
tags: [classnote, FP, template]
creation date: 2022-12-18 14:38
modification date: 2022-12-18 14:38
---

Links: [[Home]]
```button
name Go Back
type link
action obsidian://open?vault=PGKPI%2012V&file=Index
```
# ClassNote - Functional Programming
2022-12-18

# Notes - By Kaloyan Dinev
## Какво е функционално програмиране?

С две думи, функционалното програмиране се фокусира върху **какъв** резултат трябва да получи програмата, а не върху **как** получаваме този резултат.

**Centrality of Functions**

Функцията е основният инструмент на програмирането, подобно на това как обектите са основните инструменти в обектно-ориентираното програмиране. Така че използваме функции за някои от най-основните операции, като цикъл.

По този начин конвенционалните цикли не съществуват във функционалното програмиране; вместо това използваме рекурсия на функции.

**Function as Data**

Ние използваме функции като променливи, т.е. можем да ги предадем като аргументи на други функции или да ги върнем като върнати стойности. Можем също да съхраняваме функции (техните върнати стойности) в променливи.

**Self-Contained Functions**

За да използваме функции като данни, трябва да ги направим възможно най-независими и самостоятелни. Така че нашите функции трябва

- дават изход само въз основа на предоставените им аргументи,
- да не извършва никаква друга операция освен изчисляване на изхода,
- и да не променя аргументи или други променливи.

Това се различава значително от други парадигми за програмиране, които често променят променливи и аргументи във функциите. Например метод на клас в обектно-ориентираното програмиране може да промени данните на класа, които не са били предадени като аргумент.

Други парадигми на програмиране също използват функции, които нямат връщани стойности. Това също трябва да се избягва, тъй като ни насърчава да кодираме по начин, който намалява независимостта на функцията.

---

## Принципи на функционалното програмиране
### Pure Functions

Те са идеалните функции, които функционалните програмисти се опитват да напишат. Те имат две основни характеристики:

- **Референтна прозрачност:** Функциите винаги произвеждат един и същ изход за едни и същи аргументи. Това означава, че хипотетично те могат да бъдат заменени в програмата от техните върнати стойности, без това да повлияе на изпълнението на програмата под каквато и да е форма или форма.
- **Неизменност**: Функциите не променят никакви аргументи или локални/глобални променливи или входно/изходен поток. Това също е известно като избягване **странични ефекти** (промяна на програмата чрез функцията).

Нека вземем пример, за да изясним какво означава това. Да предположим, че трябва да напишете функция, която връща сумата от два аргумента. Можете да направите това, като напишете функция като тази:

```c++
void add_numbers(x, y)
{
	x = x + y;
	printf(x);
}
```

Функция за събиране на две числа чрез промяна на аргументите

Тук създадохме функцията **add_numbers()**, която

- добавя стойностите на аргументите **x** и **y**
- и съхранява резултата в **x**.

Това обаче променя стойността на **x**, като по този начин я дисквалифицира като чиста функция.

Следователно трябва да пренапишем функцията, за да следваме по-точно принципите на чистата функция. Можем да направим това, като директно върнем сумата от **x** и **y**:

```c++
int add_numbers(x, y)
{
	return x + y;
}
```

Чиста функция в C++ функция за събиране на две числа

Както можете да видите, не сме променили стойността на нито един параметър или други локални променливи.

Функцията също връща същия резултат всеки път, когато предоставяме едни и същи аргументи. Това може и да не е така, ако бяхме написали и допълнителен код във функцията, която изпълнява други задачи.

Въпреки това поддържането на всички функции независими от външната система на практика е невъзможно.

Следователно не можем да правим професионални програми, които се състоят само от чисти функции. И все пак функционалното програмиране изисква да се опитате да следвате тези принципи.

---

### Immutable Variables

Вече казахме, че на функциите не е разрешено да променят стойностите на аргументи или други локални променливи или потоци.

Това се отнася и за променливи извън функции, т.е. ние никога, никога не променяме стойността на променлива, след като е декларирана. Вместо това създаваме нови променливи с новите стойности.

Да предположим например, че имаме променлива с име **my_number** със стойност **5.** Ако трябва да променим стойността на тази променлива, тогава просто създаваме нова променлива (да речем **my_number_2** ) и запазете новата стойност там.

```Python
my_number = 5
... .. ...
... .. ...
my_number_2 = 666
```

Кодов фрагмент за създаване на нова променлива с нова стойност вместо промяна на първоначалната стойност

Това гарантира, че всяко състояние на програмата е запазено.

### First-Class Functions и Higher-Order Functions

Вече споменахме, че функционалното програмиране третира функциите като данни. Това означава, че функциите могат да бъдат

- съхранявани в променливи,
- предавани като аргументи на други функции,
- и върнати от други функции като върнати стойности.

Функциите, които се предават на други функции като аргументи или се връщат като върнати стойности, се наричат **функции от първи клас**.

От друга страна, функциите, които приемат други функции като аргументи или връщат други функции като върнати стойности, се наричат **функции от по-висок ред**.

### Function Recursion

Функционалната рекурсия е актът на използване на функция за самоизвикване вътре в тази функция. Тази практика създава ефект на зацикляне.

И тъй като функционалното програмиране има за цел да използва функциите като основен инструмент за внедряване на програма, то разчита на оператори **if-else** и рекурсия на функции за цикъл.

По този начин във функционалното програмиране няма цикли **for** или **while** цикли.

Да предположим например, че имате нужда от цикъл за отпечатване на числа от **1** до **5**. Обикновено бихте използвали **for** цикъл като този:

```c++
for(int i =0;i<6;i++)
{
	printf(i);
}
```

Но във функционалното програмиране ние използваме рекурсия, за да постигнем същия резултат:

```c++
void print_number(int x)
{
	if (x == 0)
	{
		return;
	}
	printf(x);
	print_number(--x);
}
```
## Functional Programming vs. Procedural Programming
| Functional Programming                                                                                  | Procedural Programming                                                                                    |
| ------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| Функционалното програмиране се фокусира върху функции и извиквания на функции за постигане на резултат. | Процедурното програмиране се фокусира върху последователните стъпки, необходими за постигане на резултат. |
| Фокусира се върху това какъв резултат трябва да получим.                                                | Фокусира се върху това как да получите резултата.                                                         |
| Изявленията могат да се изпълняват в произволен ред.                                                    | Изявленията трябва да се изпълняват в определен ред.                                                      |
| Функциите се третират като данни.                                                                       | Функциите не се третират като данни.                                                                      |
| Данните тук са неизменни, което означава, че не могат да бъдат променяни, след като бъдат създадени.    | Данните тук са променливи, което означава, че могат да бъдат променяни.                                   |
| Използва рекурсия на функцията за цикъл.                                                                | Използва оператори за цикъл като цикли for и while.                                                       |
| Има трудности при внедряването на несигурни елементи, като въвеждане от потребителя.                    | Той може да въведе въвеждане от потребителя без много проблеми.                                           |
| Scala, Clojure, Haskell, Erlang, F# и т.н. са примери за функционални езици за програмиране.            | C, Basic, Fortran, Pascal и т.н. са примери за процедурни езици.                                          | 

## Functional Programming vs. Object-Oriented Programming
| Functional Programming                                                                               | Object-Oriented Programming                                                 |
| ---------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| Функционалното програмиране се фокусира върху функциите и извикванията на функции.                   | Обектно-ориентираното програмиране се фокусира върху концепцията за обекти. |
| Основните елементи са променливи и функции.                                                          | Основните елементи са обекти и методи.                                      |
| Данните тук са неизменни, което означава, че не могат да бъдат променяни, след като бъдат създадени. | Данните тук са променливи, което означава, че могат да бъдат променяни.     |
| Изявленията могат да се изпълняват в произволен ред.                                                 | Изявленията трябва да се изпълняват в определен ред.                        |
| Той не прилага концепции като класове и обекти.                                                      | ООП е съсредоточен около концепциите за класове и обекти.                   |
| Функциите се третират като данни.                                                                    | Функциите не се третират като данни.                                        |
| Използва рекурсия на функцията за цикъл.                                                             | Използва оператори за цикъл като цикли for и while.                         |
| Има трудности при внедряването на несигурни елементи, като въвеждане от потребителя.                 | Той може да въведе въвеждане от потребителя без много проблеми.             |
| Scala, Clojure, Haskell, Erlang, F# и т.н. са примери за функционални езици за програмиране.         | C++, Java, Python, C# и т.н. са примери за ООП езици.                       | 

## Ползи от функционалното програмиране

Има много предимства от използването на парадигмата на функционалното програмиране в нашата програма. Някои от тях са

- **Лесни за четене:** Чистите функции са лесни за четене и разбиране, защото са сравнително прости и минималистични. Използването на функции като данни също прави кода по-лесен за четене и разбиране.
    
- **Лесно отстраняване на грешки:** Чистите функции винаги дават един и същ изход за едни и същи входове без никакви странични ефекти. Това прави програмата лесна за тестване и отстраняване на грешки. Фактът, че променливите са неизменни, също помага да се избегне объркване.
    
- **Паралелно програмиране:** Функциите са самостоятелни и независими парчета код без странични ефекти. Така че е много лесно тези функции да се изпълняват едновременно.
    
- **Мързелива оценка:** Можем да избегнем повторно оценяване, тъй като стойността се оценява и съхранява само когато е необходимо.
    
- ******Ламбда смятане:****** Тъй като функционалното програмиране се основава на концепциите за ламбда смятане, то е идеално и за математически операции.

## Ограничения на функционалното програмиране

Всичко има своите плюсове и минуси и функционалното програмиране не прави изключение. По-долу са дадени някои от недостатъците на функционалното програмиране:

- Това е трудна парадигма за разбиране от начинаещ.
- Чистите функции не са идеални за непредсказуеми аргументи като въвеждане от потребителя.
- Функционалната рекурсия може да бъде по-трудна и по-объркваща от традиционните цикли.
- Тъй като чистите функции избягват странични ефекти, комбинирането им с други функции и I/O често е трудно.
- Рекурсията и неизменността на променливите често водят до по-висока консумация на памет и намалена производителност.

## Странички ефекти
В компютърните науки се казва, че дадена операция, функция или израз има страничен ефект, ако модифицира стойност(и) на някаква променлива на състоянието извън своята локална среда, което означава, че има някакъв видим ефект, различен от основния ефект на връщане на стойност за инициатора на операцията. Примерни странични ефекти включват модифициране на нелокална променлива, модифициране на статична локална променлива, модифициране на променлив аргумент, предаден чрез препратка, извършване на I/O или извикване на други функции със странични ефекти.
## Текущи подходи към I/O във функционални езици
В този раздел ще опиша няколко решения за обработка на вход и изход във функционални езици за програмиране. Показвам как тези решения се справят с неизвестния ред на оценка и референтната прозрачност. За всяко решение ще дам неговите предимства и недостатъци. След това ще покажа как тези решения се изпълняват на функционален език и накрая ще направя заключение от предимствата и недостатъците на I/O решенията.
### I/O със страничен ефект
Най-простото решение за обработка на I/O е да се игнорират проблемите, възникващи от използването на вход и изход при дефиниране на езика за програмиране. Това може да стане чрез просто добавяне на конструкции към езика, които не са референтно прозрачни, като по този начин прехвърлят проблема от езика за програмиране към програмиста. Програмистът трябва да гарантира коректността на своята програма, когато използва референтно непрозрачни функции. езиците, които предлагат това решение, най-вече имат някакъв (ограничен) начин за контрол на реда на оценка на програмата, за да могат да осигурят коректност.
**Предимства**
Предимството на I/O със страничен ефект от гледна точка на езика за програмиране и в по-малка степен и за програмиста е неговата простота. В езика за програмиране е лесно да се добавят функции или конструкции, защото не е необходимо да се разсъждава относно реда на оценка и референтната прозрачност. Когато програмистът знае точно какво прави, I/O със страничен ефект може да бъде по-прост, защото програмистът не трябва да разсъждава за допълнителни конструкции, определящи реда на оценка, като монади, потоци и т.н.
**Недостатъци**
Има два проблема при използване на I/O със страничен ефект (Peyton Jones & Wadler, 1993), уравненията (заместването на равни с равни) не са възможни при използване на функции със страничен ефект. Следователно доказването, че функционалните програми, които използват I/O със страничен ефект, става много по-трудно. Следователно програмистът трябва да знае реда на оценката и трябва да провери дали програмата като цяло функционира според изискванията.

## Състояние
В информационните технологии и компютърните науки една система се описва като състояние, ако е проектирана да запомня предходни събития или потребителски взаимодействия; запомнената информация се нарича състояние на системата.

Наборът от състояния, които една система може да заема, е известен като нейното пространство на състоянието. В дискретна система пространството на състоянията е изброимо и често ограничено. Вътрешното поведение на системата или взаимодействието с нейната среда се състои от отделно възникващи индивидуални действия или събития, като приемане на вход или генериране на изход, които могат или не могат да накарат системата да промени състоянието си. Примери за такива системи са цифрови логически схеми и компоненти, автомати и формален език, компютърни програми и компютри.

Изходът на цифрова схема или детерминирана компютърна програма по всяко време е напълно определен от нейните текущи входове и нейното състояние.

## Създаване на функции в Haskell
Функциите играят основна роля в Haskell, тъй като той е функционален език за програмиране. Подобно на други езици, Haskell има собствена функционална дефиниция и декларация.

- Декларацията на функцията се състои от името на функцията и нейния списък с аргументи заедно с нейния изход.
    
- Дефиницията на функция е мястото, където всъщност дефинирате функция.
    

Нека вземем малък пример за функция **add**, за да разберем тази концепция в детайли.
```haskell
add :: Integer -> Integer -> Integer   --function declaration 
add x y =  x + y                       --function definition 

main = do 
   putStrLn "The addition of the two numbers is:"  
   print(add 2 5)    --calling a function 
```
Тук сме декларирали нашата функция в първия ред, а във втория ред сме написали нашата действителна функция, която ще приеме два аргумента и ще произведе един изходен тип цяло число.

Както повечето други езици, Haskell започва да компилира кода от **main** метода. Нашият код ще генерира следния изход −

Събирането на двете числа е:
7
## Pattern Matching

Pattern Matching е процес на съпоставяне на специфичен тип изрази. Това не е нищо друго освен техника за опростяване на вашия код. Тази техника може да бъде внедрена във всеки тип клас Type. If-Else може да се използва като алтернативна опция за съвпадение на шаблони.

Съпоставянето на шаблони може да се разглежда като вариант на динамичен полиморфизъм, където по време на изпълнение могат да се изпълняват различни методи в зависимост от техния списък с аргументи.

Разгледайте следния кодов блок. Тук сме използвали техниката на Pattern Matching, за да изчислим факториела на число.

```haskell
fact :: Int -> Int 
fact 0 = 1 
fact n = n * fact ( n - 1 ) 

main = do 
   putStrLn "The factorial of 5 is:" 
   print (fact 5)
```
Всички знаем как да изчислим факториела на число. Компилаторът ще започне да търси функция, наречена "факт" с аргумент. Ако аргументът не е равен на 0, тогава числото ще продължи да извиква същата функция с 1 по-малко от това на действителния аргумент.

Когато моделът на аргумента съвпада точно с 0, той ще извика нашия модел, който е „факт 0 = 1“. Нашият код ще произведе следния изход −

Факториелът на 5 е:
120

## Guards

**Guards** е концепция, която е много подобна на съпоставянето на шаблони. При съпоставянето на шаблони обикновено съпоставяме един или повече изрази, но използваме **защитници** за да тестваме някои свойства на израз.

Въпреки че е препоръчително да се използва съпоставяне на шаблони вместо **guards**, но от гледна точка на разработчика **guards** е по-разбираемо и лесно. За потребители за първи път **guards** могат да изглеждат много подобни на операторите If-Else, но са функционално различни.

В следния код сме модифицирали нашата **факториална** програма, като използваме концепцията за **guards**.

```haskell
fact :: Integer -> Integer 
fact n | n == 0 = 1 
       | n /= 0 = n * fact (n-1) 
main = do 
   putStrLn "The factorial of 5 is:"  
   print (fact 5) 
```

Тук сме декларирали двама **guards**, разделени с "|" и извикване на функцията **fact** от **main**. Вътрешно, компилаторът ще работи по същия начин, както в случай на съпоставяне на шаблони, за да даде следния резултат:

Факториелът на 5 е:
120

## Where Clause

**Where** е ключова дума или вградена функция, която може да се използва по време на изпълнение за генериране на желания резултат. Може да бъде много полезно, когато изчисляването на функцията стане сложно.

Помислете за сценарий, при който вашият вход е сложен израз с множество параметри. В такива случаи можете да разделите целия израз на малки части, като използвате клаузата "къде".

В следващия пример ние вземаме сложен математически израз. Ще покажем как можете да намерите корените на полиномно уравнение [x^2 - 8x + 6] с помощта на Haskell.

```haskell
roots :: (Float, Float, Float) -> (Float, Float)  
roots (a,b,c) = (x1, x2) where 
   x1 = e + sqrt d / (2 * a) 
   x2 = e - sqrt d / (2 * a) 
   d = b * b - 4 * a * c  
   e = - b / (2 * a)  
main = do 
   putStrLn "The roots of our Polynomial equation are:" 
   print (roots(1,-8,6))
```

Обърнете внимание на сложността на нашия израз за изчисляване на корените на дадената полиномна функция. Доста е сложно. Следователно, ние прекъсваме израза, като използваме клаузата **where** . Горната част от кода ще генерира следния изход −

Корените на нашето полиномно уравнение са:
(7.1622777,0.8377223)

## Recursion Function

Рекурсията е ситуация, при която функция се извиква многократно. Haskell не предоставя никакво средство за зацикляне на който и да е израз повече от веднъж. Вместо това, Haskell иска да разделите цялата си функционалност на колекция от различни функции и да използвате техника на рекурсия, за да реализирате вашата функционалност.

Нека отново разгледаме нашия пример за съвпадение на шаблон, където сме изчислили факториела на число. Намирането на факториел на число е класически случай на използване на рекурсия. Тук може да попитате „Как съпоставянето на образец се различава от рекурсията?“ Разликата между тези две се състои в начина, по който се използват. Съпоставянето на шаблони работи върху настройването на ограничението на терминала, докато рекурсията е извикване на функция.

В следващия пример сме използвали както съвпадение на шаблони, така и рекурсия, за да изчислим факториела от 5.

```haskell
fact :: Int -> Int 
fact 0 = 1 
fact n = n * fact ( n - 1 ) 

main = do 
   putStrLn "The factorial of 5 is:" 
   print (fact 5) 
```

Той ще произведе следния изход −

Факториелът на 5 е:
120

## Higher Order Function

Досега видяхме, че функциите на Haskell приемат един **тип** като вход и произвеждат друг **тип** като изход, което е почти подобно в други императивни езици. Функциите от по-висок ред са уникална функция на Haskell, където можете да използвате функция като входен или изходен аргумент.

Въпреки че това е виртуална концепция, но в програмите от реалния свят всяка функция, която дефинираме в Haskell, използва механизъм от по-висок ред, за да осигури изход. Ако имате възможност да разгледате библиотечната функция на Haskell, тогава ще откриете, че повечето от библиотечните функции са написани по начин от по-висок ред.

Нека вземем пример, при който ще импортираме вградена карта на функции от по-висок порядък и ще използваме същата, за да реализираме друга функция от по-висок порядък според нашия избор.

```haskell
import Data.Char  
import Prelude hiding (map) 

map :: (a -> b) -> [a] -> [b] 
map _ [] = [] 
map func (x : abc) = func x : map func abc  
main = print $ map toUpper "kloyan dinev" 
```

В горния пример използвахме функцията **toUpper** на класа тип **Char** за преобразуване на нашия вход в главни букви. Тук методът "map" приема функция като аргумент и връща необходимия резултат. Ето неговия изход −

KALOYAN DINEV

## Lambda Expression

Понякога трябва да напишем функция, която ще се използва само веднъж, през целия живот на приложението. За да се справят с този вид ситуации, разработчиците на Haskell използват друг анонимен блок, известен като **ламбда израз** или **ламбда функция**

Функция без дефиниция се нарича ламбда функция. Ламбда функцията се обозначава със знака "\". Нека вземем следния пример, където ще увеличим входната стойност с 1, без да създаваме никаква функция.
```haskell
main = do 
   putStrLn "The successor of 4 is:"  
   print ((\x -> x + 1) 4)
```

Тук създадохме анонимна функция, която няма име. Той приема цяло число 4 като аргумент и отпечатва изходната стойност. Ние основно работим с една функция, без дори да сме я декларирали правилно. Това е красотата на ламбда изразите.

Нашият ламбда израз ще произведе следния изход −

The successor of 4 is:
5

## Haskell list

В Haskell списъкът се използва за съхраняване на елементите и тези елементи са хомогенни по природа, което просто означава само един тип. Вътре в списъка можем да съхраняваме списък с елементи, които са от един и същи тип. можем да съхраняваме всеки тип данни в списъка. Също така, той ни предоставя някои функции, чрез използването му можем да модифицираме елементите на списъка, също така стигнахме до сливането на два списъка заедно, като използваме функциите, налични в списъка на Haskell. В предстоящия раздел на урока ще видим вътрешната работа на списъка с неговото внедряване и използване при програмиране в Haskell.

**Syntax**

Както беше обсъдено, той се използва за съхраняване на елементите вътре в него, нека разгледаме по-отблизо синтаксиса на списъка, за да го разберем по-добре, за да видите по-долу;

```haskell
let varibale_name = [value1, value2, value3 ..]
```
Както можете да видите в горния ред със синтаксис, ние създаваме списък, той е много лесен за използване и обработка от програмиста с чист и четим синтаксис. Нека вземем практически синтаксис за начинаещи за по-добро разбиране на това вижте по-долу;

Тъй като вече знаем, че списъкът се използва за съхраняване на елементите вътре в него, това е структура от данни, която е отговорна за съхраняването на хомогенния тип данни вътре в него, можем да съхраняваме всякакъв тип данни вътре в списъка, който може да бъде низ, число , характер и така нататък. Имаме и някои функции на списъка, като използваме тях, можем да извършваме операции върху променливата на списъка. Първо, ще разгледаме по-отблизо синтаксиса и подписа на списъка, вижте по-долу;

**Syntax:**

```haskell
let variable = [your values]
```

Можем просто да създадем списък в Haskell като всяка друга променлива, просто използвахме [] квадратни скоби, за да инициализираме елементите на списъка в Haskell. Също така не забравяйте, че ще съхранява само един тип елемент в себе си. Сега ще трябва да разгледаме функцията, която можем да използваме с променлива в списъка, за да изпълним операцията, която е описана по-долу;

**1. lenght:** чрез използването на тази функция можем да получим дължината на променливата списък в Haskell, тя просто ще ни върне дължината под формата на целочислена стойност. Показва ни колко елемента присъстват в масива или списъка. По-долу вижте синтаксиса за използване на функцията със списъка.

```haskell
length list_name
```

**2. head:** Тази функция ще ни върне първите елементи от списъка, който присъства в началната отвара. По-долу вижте синтаксиса за използване на функцията със списъка в Haskell;

```haskell
head list_name
```

**3. tail:** Тази функция ще ни върне останалите елементи с изключение на главата на списъка. По-долу вижте синтаксиса за използване на функцията със списъка.

```haskell
tail list_name
```

**4. last:** Тази функция ще ни върне последните налични елементи в списъка. По-долу вижте синтаксиса за използване на функцията със списъка.

```haskell
last list_name
```

**5. reverse:** Тази функция ще ни върне списъка в обратен ред на оригиналния списък. По-долу вижте синтаксиса за използване на функцията със списъка.

```haskell
reverse list_name
```