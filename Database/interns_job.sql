-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: interns
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `jid` int(11) NOT NULL AUTO_INCREMENT,
  `jdescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jsalary` int(11) DEFAULT NULL,
  `did` int(11) NOT NULL,
  `jname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`jid`),
  KEY `did` (`did`),
  CONSTRAINT `job_ibfk_1` FOREIGN KEY (`did`) REFERENCES `direct` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,' SMM менеджер\nИнстаграм (SMM) - менеджер (разработка и согласование материала соц. сетях);\nSMM продвижение, Таргетинг, Сторимэйкинг, Видеомонтаж;\nПодготовка, согласование и запуск рекламы;\nРазработка и внедрение маркетинговых стратегий;\nАнализ конкурентного рынка;\nПоиск и нахождение решений для эффективного продвижения компании в соц. сетях.\n#Almaty',200000,2,'SMM'),(2,' SMM менеджер для №ТОО Serebroff\n-разработка контент-плана для социальных сетей;\n-Знание дизайнерских программ\n-редактура своих и чужих текстов, исправление различных ошибок;\n-мониторинг отзывов о компании и отработка негатива;\n-создание положительного имиджа компании в глобальной сети интернет\n-разработка запоминающихся слоганов, названий компаний, заголовков;\nhttps://hh.kz/vacancy/41756987?query=Smm',200000,2,'SMM'),(3,'Обязанности:\n-Планирует коммерческую деятельность организации.\n-Контролирует разработку и реализацию бизнес-планов, коммерческих условий договоров, оценивает риски деятельности компании.\n-Руководит коммерческой деятельностью организации в пределах установленных полномочий.\n-Способствует наращиванию объема сбыта услуг, продукции, повышению качества, конкурентоспособности, бережного и результативного использования ресурсов компании.\n-Анализирует, разрешает организационные, кадровые, технические, экономические вопросы.\nТребования:\n!специализированные знания в области менеджмента;\n!коммуникабельность; стратегическое мышление;\n!аналитические способности;\n!инициативность;\n!умение принимать управленческие и административные решения;\nУсловия:\n-График работы с 9:00 до 18:00 (5/2)\n-Оформление по ТК РК\n#Менеджер\nhttps://hh.kz/vacancy/41052992?query=%D0%9C%D0%B5%D0%BD%D0%B5%D0%B4%D0%B6%D0%BC%D0%B5%D0%BD%D1%82',300000,2,'Management'),(4,'Преподаватель английского языка (GSC Diplomat)\nТребования:\n-Высшее образование и опыт работы ПРЕПОДАВАНИЯ обязателен!\n-Наличие международных сертификатов IELTS/TOEFL, TKT, CELTA/Cert-TESOL/TEFL является преимуществом\nОбязанности:\n-Преподавание английского языка разным возрастным группам от уровня Beginner до Advanced.\n-Проведение и участие во внутренних мероприятиях.\n-Соблюдение внутреннего распорядка компании.\nУсловия:\n-График работы преимущественно во вторую половину дня в будни (12:00-21:00)\n-Оклад\n-Гибкая бонусная система\n-Профессиональный рост\n#NurSultan\nhttps://hh.kz/vacancy/41694941',150000,2,'Teacher'),(5,'Software Engineer Internship - Summer 2021\nResponsibilities:\n• Scale distributed applications, make architectural tradeoffs applying synchronous and asynchronous design patterns, write code, and deliver with speediness and quality.\n• Develop multi-tier scalable, high-volume performing, and reliable user-centric applications that operate 24x7.\n• Produce high quality software that is unit tested, code reviewed, and checked in regularly for continuous integration.\n• This is a full-time fall internship role based in Sunnyvale, CA, San Francisco, CA or New York, NY\n• This internship will take place during Summer 2021\nBasic Qualifications:\n• Currently pursuing a B.A./B.S. Degree or higher in Computer Science, or related technical field· and returning to the program after the completion of the internship\n• Programming experience in one or more of the following languages: Java, C/C++, C#, Python, or Ruby\n#LinkedIn\nhttps://www.linkedin.com/jobs/search/?currentJobId=2184303072&pivotType=jymbii\n',0,1,'Computer Science'),(6,'Фриланс – Копирайтер | Соцсети (SMM) | Дизайнер\nГрафик работы: Удаленная работа\n-Удаленно (фриланс)\n-копирайтинг, переводы; заказы и для начинающих авторов;\n-автор (написание/выполнение) студен-ских работ;\n-дизайн, графика; программирование, верстка, настройка сайтов, 1С;\n-SMM продвижение, реклама в соцсетях; монетизация собственных блогов.\n#Taraz, #SMM\nhttps://www.linkedin.com/jobs/search/?currentJobId=2356662767&geoId=106049128&keywords=smm&location=Kazakhstan\n',0,1,'SMM'),(7,'Marketing Intern\nКого мы ищем?\n-Выпускник или студент последних курсов 2016/17;\n-Опытный пользователь ПК: MS Excel, MS Power Point;\n-Знание английского языка на уровне не ниже Intermediate;\n-Аналитические способности;\n-Желание обучаться.\n\nФункциональные обязанности:\n-Принятие участия в проекте по сбору и систематизации данных по клиентам;\n-Разработка инструментов для онлайн/офлайн коммуникации с клиентом на основе полученных данных;\n-Принятие участия в трейд - маркетинговых проектах;\n-Ведение отчетов по продажам.\n\nМы предлагаем:\n-Опыт работы в международной компании;\n-Возможность совмещать работу с учебой;\n-Официальное оформление.\nДлительность стажировки – 3 месяца.\n#Almaty',0,1,'Manager'),(8,'Главный юрист Департамента правового сопровождения кредитной деятельности\nАО Банк Развития Казахстана\nТребования:\n\n-высшее юридическое образование;\n-знание гражданского права, гражданско-процессуального права, банковского законодательства, корпоративного права;\n-Общий стаж по специальности (не менее 3-х лет) в банковской/финансовой сфере по юридическому сопровождению проектов МСБ и корпоративного кредитования;\n-Аналитическое мышление, способность работать в команде;\n-Навыки пользования системами ИС Юрист (Параграф, BestProfi, Адилет), Lotus Notes.\nОбязанности:\n-Юридическое сопровождение инвестиционных проектов и экспортных операций, включающее: установление правового статуса юридических лиц, участвующих в проектах, правовая оценка предоставляемого обеспечения, установление легитимности заключаемых сделок;\n#NurSultan\nhttps://hh.kz/vacancy/41754471?query=%D1%8E%D1%80%D0%B8%D1%81%D1%82',0,2,'Law'),(9,'Ведущий менеджер по работе с корпоративными клиентами\n\nТОО Almaty Enterprising Company Ltd (Алматы Интерпрайзинг компани ЛТД)\nОбязанности:\n-Формирование и обработка заказов;\n-Контроль и полное ведение заказов;\n-Поиск клиентов;\n-Проведение переговоров;\n-Участие в тендерах;\n-Подготовка коммерческих предложений и договоров;\n\nТребования:\n\n-Нам нужен специалист, который работает в сфере корпоративных клиентов.\n-Для нас важен каждый клиент, уважительное, грамотное и этично-корректное общение с клиентами – является двигателем при взаимодействиях с Заказчиками.\n-Желателен опыт работы в крупных компаниях.\n-Выстраивать положительные общения с клиентами.\n#Almaty\nhttps://hh.kz/vacancy/41773646?query=%D0%B1%D0%B0%D0%BD%D0%BA',400000,2,'Bank');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-26  8:17:46
