exerc 1 
create trigger insert_clientes after insert 
on Clientes
for each row 

insert into Auditoria (mensagem)
values ('Novo cliente');
