/*
Простейший калькулятор выполненый через пакет
*/

create or replace package calc_pkg
is

    procedure prc_get_calc_result (p_val1           number,
                                   p_operation_name varchar2,
                                   p_val2           number);

    function fnc_addition (p_add_value1 number,
                           p_add_value2 number) return number;
    
    function fnc_substruction (p_sub_value1 number,
                               p_sub_value2 number) return number;
                                   
    function fnc_multiplication (p_mult_value1 number,
                                 p_mult_value2 number) return number;
    
    function fnc_division (p_div_value1 number,
                           p_div_value2 number) return number;
    
end calc_pkg;

--

create or replace package body calc_pkg
is
    
    function fnc_addition (p_add_value1 number,
                           p_add_value2 number) return number
    is
    
        v_add_result     number;
        
    begin
       
       v_add_result := p_add_value1 + p_add_value2;
        
       return v_add_result; 
    
    end fnc_addition;


    function fnc_substruction (p_sub_value1 number,
                               p_sub_value2 number) return number
    is
    
        v_sub_result     number;
    
    begin

        v_sub_result := p_sub_value1 - p_sub_value2;
        
        return v_sub_result;
        
    end fnc_substruction;

    
    function fnc_multiplication (p_mult_value1 number,
                                 p_mult_value2 number) return number
    is
    
    v_mult_result number;
    
    begin
        
        v_mult_result := p_mult_value1 * p_mult_value2;    
        
        return v_mult_result;
        
    end fnc_multiplication;
    
    
    function fnc_division (p_div_value1 number,
                           p_div_value2 number) return number
    is
    
        v_div_result number;
        
    begin
        
        v_div_result := p_div_value1/p_div_value2;
        
        return v_div_result;
    
    end fnc_division;
    
--
    
    procedure prc_get_calc_result (p_val1           number,
                                   p_operation_name varchar2,
                                   p_val2           number)
    is
        v_val1 number;
        v_val2 number;
        v_operation_name varchar2 (32);
        v_calc_result number;
    
    begin
        
        v_val1 := p_val1;
        v_val2 := p_val2;
        v_operation_name := p_operation_name;
        
        if v_operation_name = '-' then
        
            v_calc_result := calc_pkg.fnc_substruction (v_val1, v_val2);
            dbms_output.put_line ('Результат вычитания ' || v_val2 || ' из ' || v_val1 || ' равняется: ' || v_calc_result);
        
        elsif v_operation_name = '+' then
        
            v_calc_result := calc_pkg.fnc_addition (v_val1, v_val2);
            dbms_output.put_line ('Результат сложения ' || v_val1 || ' и ' || v_val2 || ' равняется: '  || v_calc_result);
        
        elsif v_operation_name = '*' then
        
            v_calc_result := fnc_multiplication (v_val1, v_val2);
            dbms_output.put_line ('Результат умножения ' || v_val1 || ' на ' || v_val2 || ' равняется: '  || v_calc_result);
        
        elsif v_operation_name = '/' then
            
            v_calc_result := fnc_division (v_val1, v_val2);
            dbms_output.put_line ('Результат деления ' || v_val1 || ' на ' || v_val2 || ' равняется: '  || v_calc_result);
        
        else
            dbms_output.put_line ('Операция неопределена!');
        end if; 
                
    end prc_get_calc_result;
      
end calc_pkg;


begin

    calc_pkg.prc_get_calc_result (16, '/', 2);

end;
