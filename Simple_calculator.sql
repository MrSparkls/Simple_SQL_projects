/*
Simple calculator
*/


create table calc_results (operation_id         number generated as identity, -- table in which all results will be stored
                           operation_time       timestamp,
                           value_1              number,
                           operation_name       varchar2 (16),
                           value_2              number,
                           result               number);

create or replace package calc_pkg
is

    procedure prc_get_calc_result (p_val1           number,         -- procedure through which user input values and choose between mathematic operations
                                   p_operation_name varchar2,
                                   p_val2           number);

    function fnc_addition (p_add_value1 number,                     -- function, which returns result of addition
                           p_add_value2 number) return number;
    
    function fnc_substruction (p_sub_value1 number,                 --function, which returns result of substruction
                               p_sub_value2 number) return number;
                                   
    function fnc_multiplication (p_mult_value1 number,              -- function, which returns result of multiplication
                                 p_mult_value2 number) return number;
    
    function fnc_division (p_div_value1 number,                     -- function, which returns result of division
                           p_div_value2 number) return number;
    
    procedure prc_memory (p_hst_val1            number,             -- procedure, which stores the result of the operation
                          p_operation_name      varchar2,
                          p_hst_val2            number,
                          p_result              number);                         
                          
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
    
    procedure prc_memory (p_hst_val1           number,             -- procedure, which stores the result of the operation
                          p_operation_name      varchar2,
                          p_hst_val2           number,
                          p_result              number)
    is
    
        v_time timestamp;
    
    begin
    
    v_time := current_timestamp;
    
    insert into calc_results (operation_time, value_1, operation_name, value_2, result)
                              values (v_time, p_hst_val1, p_operation_name, p_hst_val2, p_result);  
    
    end prc_memory;

        
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
            calc_pkg.prc_memory (v_val1, v_operation_name, v_val2, v_calc_result);
            
            dbms_output.put_line ('The result of substruction of ' || v_val2 || ' from ' || v_val1 || ' is ' || v_calc_result);
        
        elsif v_operation_name = '+' then
        
            v_calc_result := calc_pkg.fnc_addition (v_val1, v_val2);
            calc_pkg.prc_memory (v_val1, v_operation_name, v_val2, v_calc_result);
            
            dbms_output.put_line ('The result of addition of ' || v_val1 || ' to ' || v_val2 || ' is '  || v_calc_result);
        
        elsif v_operation_name = '*' then
        
            v_calc_result := fnc_multiplication (v_val1, v_val2);
            calc_pkg.prc_memory (v_val1, v_operation_name, v_val2, v_calc_result);
            
            dbms_output.put_line ('The result of multiplication of ' || v_val1 || ' by ' || v_val2 || ' is '  || v_calc_result);
        
        elsif v_operation_name = '/' then
            
            v_calc_result := fnc_division (v_val1, v_val2);
            calc_pkg.prc_memory (v_val1, v_operation_name, v_val2, v_calc_result);
            
            dbms_output.put_line ('The result of division ' || v_val1 || ' by ' || v_val2 || ' is '  || v_calc_result);
        
        else
        
            calc_pkg.prc_memory (v_val1, v_operation_name, v_val2, null);
            
            dbms_output.put_line ('Unknown mathemathical operation!');
            
        end if; 
                
    end prc_get_calc_result;
      
end calc_pkg;


begin

    calc_pkg.prc_get_calc_result (8, '-', 6);

end;

select *
from   calc_results;