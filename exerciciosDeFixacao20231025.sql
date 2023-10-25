exerc 1 
create trigger insert_clientes after insert 
on Clientes
for each row 

insert into Auditoria (mensagem)
values ('Novo cliente');

exerc 2 
create trigger insert_exc_clientes before insert 
on Clientes 
for each row

insert into Auditoria (mensagem)
values ('Tentativa de exclusão');
