use classicmodels;
show tables;

select count(*) as NumberOfColumns from 
                 information_schema.columns where table_name ='customers';
                 
select column_name from information_schema.columns where table_name ='customers';

select column_name, data_type from information_schema.columns where table_name='customers';
select column_name, column_type from information_schema.columns where table_name='customers';

select column_name, column_key from information_schema.columns where table_name='customers';
