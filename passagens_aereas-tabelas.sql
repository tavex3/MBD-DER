-- ============= --
-- Tabela: Aviao --
-- ============= --
INSERT INTO AVIAO VALUES (1001, 'BOEING 737');
INSERT INTO AVIAO VALUES (2001, 'AIRBUS A320');
INSERT INTO AVIAO VALUES (3001, 'BOEING 777');

-- =========== --
-- Tabela: Voo --
-- =========== --
INSERT INTO VOO VALUES (1, 'Carlos Almeida', 'GRU', 'SSA', 1001);
INSERT INTO VOO VALUES (2, 'Marcos Silva', 'GIG', 'REC', 2001);
INSERT INTO VOO VALUES (3, 'Paulo César', 'GRU', 'BSB', 3001);

-- =============== --
-- Tabela: Assento --
-- =============== --
INSERT INTO ASSENTO VALUES (1, 1001, '1A');
INSERT INTO ASSENTO VALUES (2, 1001, '1B');
INSERT INTO ASSENTO VALUES (1, 2001, '1A');

-- ================== --
-- Tabela: Passageiro --
-- ================== --
INSERT INTO PASSAGEIRO VALUES ('12345678901', 'João Silva', 1, 1001);
INSERT INTO PASSAGEIRO VALUES ('98765432100', 'Maria Souzza', 2, 1001);
INSERT INTO PASSAGEIRO VALUES ('55566677788', 'Pedro Ramos', 1, 2001);

-- ================= --
-- Tabela: Economico --
-- ================= --
INSERT INTO ECONOMICO VALUES (10, 1, 1001);
INSERT INTO ECONOMICO VALUES (11, 2, 1001);
INSERT INTO ECONOMICO VALUES (12, 1, 2001);

-- ========= --
-- Alteração --
-- ========= --
UPDATE PASSAGEIRO 
SET NOMEPASS = 'Maria Costa'
WHERE CPF = '98765432100';

-- ======== --
-- Exclusão --
-- ======== --
DELETE FROM PASSAGEIRO 
WHERE CPF = '55566677788';

-- ======== --
-- Consulta --
-- ======== --
SELECT * FROM AVIAO;
SELECT * FROM VOO;
SELECT * FROM ASSENTO;
SELECT * FROM PASSAGEIRO;
SELECT * FROM ECONOMICO;
