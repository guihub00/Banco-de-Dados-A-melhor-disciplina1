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

exerc 3 
create trigger Nome_Cliente_Atualizado after update
on Clientes 
for each row
begin
    declare E nome_antigo VARCHAR(255);
    set nome_antigo = OLD.nome;
    declare E nome_novo VARCHAR(255);
    set nome_novo = new.nome;

    insert into Auditoria (mensagem) 
    values ('Nome Antigo',nome_antigo,'para', 'Nome Novo', nome_novo);
end;

