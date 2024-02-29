SET SERVEROUTPUT ON;

DECLARE
    V_1 VARCHAR2(30);
    V_2 V_1%TYPE;

BEGIN
    V_1 := 10;
    V_2 := 555;
DBMS_OUTPUT.PUT_LINE(V_1);
DBMS_OUTPUT.PUT_LINE(V_2);
END;

/*Exercício 1:
Criar um bloco PL-SQL para calcular o valor do novo salário mínimo que deverá ser de 25%
em cima do atual, que é de R$?????.
*/

DECLARE
    SAL_ATUAL NUMBER;
    NOVO_SAL SAL_ATUAL%TYPE;

BEGIN
    SAL_ATUAL := 1414;
    NOVO_SAL := SAL_ATUAL*1.25;
DBMS_OUTPUT.PUT_LINE(NOVO_SAL);
END;

/*Exercício 2:
Criar um bloco PL-SQL para calcular o valor em reais de 45 dólares, sendo que o valor do
câmbio a ser considerado é de R$????.
*/

DECLARE
    VAL_REAIS NUMBER;
    VAL_DOLAR VAL_REAIS%TYPE;
    NOVO_VALOR VAL_REAIS%TYPE;

BEGIN
    VAL_REAIS := 45;
    VAL_DOLAR := 4.96;
    NOVO_VALOR := VAL_REAIS*VAL_DOLAR;
DBMS_OUTPUT.PUT_LINE('O VALOR EM REAIS DE '||VAL_REAIS||' EM DOLARES É: ' ||NOVO_VALOR);
END;

/*Repetir o mesmo exercício de cima com input de usuário*/

DECLARE
    VAL_REAIS NUMBER := &VALOR;
    VAL_DOLAR VAL_REAIS%TYPE;
    NOVO_VALOR VAL_REAIS%TYPE;

BEGIN
    VAL_DOLAR := 4.96;
    NOVO_VALOR := VAL_REAIS*VAL_DOLAR;
DBMS_OUTPUT.PUT_LINE('O VALOR EM REAIS DE '||VAL_REAIS||' EM DOLARES É: ' ||NOVO_VALOR);
END;

/*Exercício 3:
Criar um bloco PL-SQL para calcular o valor das parcelas de uma compra de um carro, nas seguintes condições:
OBSERVAÇÃO:
- Parcelas para aquisição em 10 pagamentos.
- O valor da compra deverá ser informado em tempo de execução.
- O valor total dos juros é de 3% e deverá ser aplicado sobre o montante financiado
- No final informar o valor de cada parcela.
*/

DECLARE
    VAL_COMPRA NUMBER := &VALOR;
    PARCELAS NUMBER := &FINANCIADO;
    VAL_JUROS VAL_COMPRA%TYPE;
    VAL_PARCELAS VAL_COMPRA%TYPE;
    VAL_TOTAL VAL_COMPRA%TYPE;

BEGIN
    VAL_JUROS := 1.03;
    VAL_PARCELAS := VAL_COMPRA*VAL_JUROS/PARCELAS;
    VAL_TOTAL := VAL_COMPRA*VAL_JUROS;
    DBMS_OUTPUT.PUT_LINE('VALOR DO CARRO R$: ' ||VAL_COMPRA);
    DBMS_OUTPUT.PUT_LINE('NÚMERO DE PARCELAS : ' ||PARCELAS);
    DBMS_OUTPUT.PUT_LINE('VALOR DE CADA PARCELA R$: ' ||VAL_PARCELAS);
    DBMS_OUTPUT.PUT_LINE('VALOR TOTAL R$: ' ||VAL_TOTAL);
END;

/*Exercício 4:
Criar um bloco PL-SQL para calcular o valor de cada parcela de uma compra de um carro, nas seguintes condições: 
- Parcelas para aquisição em 6 pagamentos. 
- Parcelas para aquisição em 12 pagamentos. 
- Parcelas para aquisição em 18 pagamentos. 

OBSERVAÇÃO: 

1 - Deverá ser dada uma entrada de 20% do valor da compra. 
2 – Deverá ser aplicada uma taxa juros, no saldo restante, nas seguintes condições: 
3 – No final informar o valor das parcelas para as 3 formas de pagamento, com o Valor de aquisição de 10.000 e o mesmo com entrada de dados via teclado (em tempo de execução).
A – Pagamento em 6 parcelas: 10%. 
B – Pagamento em 12 parcelas: 15%. 
C – Pagamento em 18 parcelas: 20%.
*/

DECLARE
    VAL_COMPRA NUMBER := &VALOR;
    PARCELA01 NUMBER;
    PARCELA02 PARCELA01%TYPE;
    PARCELA03 PARCELA01%TYPE;
    VL_ENTRADA VAL_COMPRA%TYPE;
    VL_RESTANTE VAL_COMPRA%TYPE;

BEGIN
    VL_RESTANTE := VAL_COMPRA*0.8;
    VL_ENTRADA := VAL_COMPRA*0.2;
    PARCELA01 := (VL_RESTANTE*1.10)/6;
    PARCELA02 := (VL_RESTANTE*1.15)/12;
    PARCELA03 := (VL_RESTANTE*1.20)/18;
    DBMS_OUTPUT.PUT_LINE('O VALOR TOTAL DO CARRO R$: '||VAL_COMPRA);
    DBMS_OUTPUT.PUT_LINE('O VALOR DA ENTRADA R$: '||VL_ENTRADA);
    DBMS_OUTPUT.PUT_LINE('O VALOR DE CADA PARCELA FEITO EM 6 VEZES SAI POR R$: '||ROUND(PARCELA01,2));
    DBMS_OUTPUT.PUT_LINE('O VALOR DE CADA PARCELA FEITO EM 12 VEZES SAI POR R$: '||ROUND(PARCELA02,2));
    DBMS_OUTPUT.PUT_LINE('O VALOR DE CADA PARCELA FEITO EM 18 VEZES SAI POR R$: '||ROUND(PARCELA03,2));
END;
 
--Recursos da Linguagem--
--Estrutura de Decisão--

/*If – then - elsif – then – else – end if
IF <condição> THEN 
	<instruções>;
ELSIF <condição> THEN
	<instruções>; 
ELSE 
	<instruções>;
END IF; 
*/
 
DECLARE
    NUMERO NUMBER :=&VALOR;

BEGIN
    IF NUMERO < 0 THEN
    DBMS_OUTPUT.PUT_LINE('O NÚMERO '|| NUMERO || ' INFORMADO É NEGATIVO');
    ELSE
    DBMS_OUTPUT.PUT_LINE('O NÚMERO '|| NUMERO || ' INFORMADO É POSITIVO');
END IF;
END;
 
DECLARE
    NUMERO2 NUMBER :=&VALOR;

BEGIN
    IF MOD(NUMERO2,2) =0 THEN
    DBMS_OUTPUT.PUT_LINE('O NÚMERO '|| NUMERO2 || ' INFORMADO É PAR');
    ELSE
    DBMS_OUTPUT.PUT_LINE('O NÚMERO '|| NUMERO2 || ' INFORMADO É IMPAR');
END IF;
END;
 
--Exercício para tomada de decisão--
/*Criar um bloco PL/Sql para analisar a entrada de dados do sexo de um cliente, o bloco deverá receber o dado sobre o sexo: 
masculino – M ou m, para feminino -  F ou f, qualquer dado fora desta configuração deverá ser exibido ‘Outros’,
para M ou m ‘Masculino’, para F ou f ‘Feminino’.
*/  
 
DECLARE
    GENERO VARCHAR2(1) := '&GENERO';

BEGIN
    IF UPPER(GENERO) = 'M' THEN
    	DBMS_OUTPUT.PUT_LINE('GENERO INFORMADO É MASCULINO');
    ELSIF UPPER(GENERO) = 'F' THEN
    	DBMS_OUTPUT.PUT_LINE('GENERO INFORMADO É FEMININO');
    ELSE
    	DBMS_OUTPUT.PUT_LINE('GENERO INFORMADO É OUTROS');
    END IF;
END;   