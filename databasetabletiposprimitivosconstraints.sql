Tipos Primitivos


Numerico Inteiro - TinyInt, SmallInt, Int, MediumInt, BigInt
		 Real - Decimal, Float, Double, Real
         Logico - Bit, Boolean

Data/Tempo - Date, DateTime, TimeStamp, Time, Year

Literal Caractere - Char, VarChar
		Texto - TinyText, Text, MediumText, LongText
        Binario - TinyBlob, Blob, MediumBlob, LongBlob
        Coleção Enum, Set

Espacial - Geometry, Point, Polygo

create database cadastro
default character set utf8
default collate utf8_general_ci;

create table pessoas (
id int not null auto_increment,
nome varchar(30) NOT NULL,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) DEFAULT 'Brasil',
primary key (id)
) default charset = utf8;

describe pessoas;

use cadastro;