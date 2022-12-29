---
## Front matter
title: "Отчёта по лабораторной работе 5"
subtitle: "Создание и процесс обработки программ на языке ассемблера NASM"
author: "Хусейнов Шухрат Наимжонович"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является освоение процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Задание

1. Изучите программу HelloWorld и скомпилируйте ее.

2. С помощью любого текстового редактора внесите изменения в текст программы так, 
чтобы вместо Hello world! на экран выводилась строка с вашими фамилией и именем.

3. Скомпилируйте новую программу и проверьте ее работу.

4. Загрузите файлы на GitHub.

# Выполнение лабораторной работы

1. Создали каталог lab05 командой mkdir,
перешел в него с помощью команды cd, 
скачал с ТУИС файл hello.asm и положил в папку. (рис. [-@fig:001])

2. Открыли файл и изучили текст программы (рис. [-@fig:001])

![Файл hello.asm](image/01.png){ #fig:001 width=70%, height=70% }

2. Транслировали файл командой nasm

3. Выполнили линковку командой ld и получили исполняемый файл и запустили его (рис. [-@fig:002])

![Работа программы hello](image/02.png){ #fig:002 width=70%, height=70% }

4. Изменили сообщение Hello world на свое имя и запустили файл еще раз (рис. [-@fig:003], [-@fig:004])

![Файл lab05.asm](image/03.png){ #fig:003 width=70%, height=70% }

![Работа программы lab05](image/04.png){ #fig:004 width=70%, height=70% }

# Выводы

Освоили процесс компиляции и сборки программ, написанных на ассемблере nasm.
