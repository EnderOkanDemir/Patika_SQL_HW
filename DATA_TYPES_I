CREATE TABLE test
( 
 	real_type REAL,
	double_type DOUBLE PRECISION,
	numeric_type NUMERIC
);

INSERT INTO test
VALUES
(	
	1.12345678912345678912,
	1.12345678912345678912,
	1.12345678912345678912
);


"real_type"			"double_type"				"numeric_type"
real				double precision			numeric
1.1234568			1.1234567891234568			1.12345678912345678912
6 decimal digits		15 decimal digits precision		user-specified precision, exact	
7. yi yuvarlamış		16. yı yuvarlamış

Name			Storage Size	Description				Range
smallint		2 bytes		small-range integer			-32768 to +32767
integer			4 bytes		typical choice for integer		-2147483648 to +2147483647
bigint			8 bytes		large-range integer			-9223372036854775808 to +9223372036854775807
decimal			variable	user-specified precision, exact		up to 131072 digits before the decimal point; up to 16383 digits after the decimal point
numeric			variable	user-specified precision, exact		up to 131072 digits before the decimal point; up to 16383 digits after the decimal point
real			4 bytes		variable-precision, inexact		6 decimal digits precision
double precision	8 bytes		variable-precision, inexact		15 decimal digits precision
smallserial		2 bytes		small autoincrementing integer		1 to 32767
serial			4 bytes		autoincrementing integer		1 to 2147483647
bigserial		8 bytes		large autoincrementing integer		1 to 9223372036854775807


CREATE TABLE test2
( 
 	float4 FLOAT4,
	float8 FLOAT8,
	decimal_type DECIMAL
);

INSERT INTO test2
VALUES
(	
	1.12345678912345678912,
	1.12345678912345678912,
	1.12345678912345678912
);

SELECT *
FROM test2;


"float4_type"			"float8_type"				"decimal_type"
real				double precision			numeric
1.1234568			1.1234567891234568			1.12345678912345678912



SELECT (10+2);

-- ?column?
-- integer  
-- 12


SELECT (10.0);

-- ?column?
-- numeric  
-- 10.0


SELECT (10.0::INTEGER);

-- int4
-- integer  
-- 10.0


SELECT (10.666666666666666666666666666::INTEGER);

-- int4
-- integer  
-- 11


SELECT (10.666666666666666666666666666::REAL);

-- float4
-- real  
-- 10.666667


SELECT (10.666666666666666666666666666::DOUBLE PRECISION);

-- float8
-- double precision  
-- 10.666666666666666


SELECT (10.666666666666666666666666666::NUMERIC);

-- numeric
-- numeric
-- 10.666666666666666666666666666

-- Genel olarak sayısal verilerle çalışırken tam sayı istiyorsak integer ve ondalık istiyorsak numeric veri tipi ile çalışıyoruz.
-- In general, operating with numeric scales, if we want integers, we work with integers and if we want decimals, we work with numeric data type.

