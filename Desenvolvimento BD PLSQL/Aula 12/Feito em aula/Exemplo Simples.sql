SET SERVEROUTPUT ON;

CREATE OR REPLACE PACKAGE pacote_exibir_texto IS
  PROCEDURE proc_hello;
  FUNCTION  func_hello RETURN VARCHAR2;
END pacote_exibir_texto;
/

CREATE OR REPLACE PACKAGE BODY pacote_exibir_texto IS
  PROCEDURE proc_hello IS
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello world, Proc');
  END;
  
  FUNCTION func_hello RETURN VARCHAR2 IS
  BEGIN
    RETURN('Hello World, Func');
  END;
END;
/

-- Executar o procedimento dentro do pacote
exec pacote_exibir_texto.proc_hello;

SELECT pacote_exibir_texto.func_hello FROM DUAL;
