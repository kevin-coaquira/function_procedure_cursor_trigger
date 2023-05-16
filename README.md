# Function,Procedure,Cursor,Trigger

In this work I used **MySQL Workbench** to do the function,procedure,cursor and trigger.  
I will leave the Script uploaded with the comments
## Trigger  
First of all we create a database in my case the following:  
![image](https://github.com/kevin-coaquira/function_procedure_cursor_trigger/assets/91737963/264886ea-c05d-4faa-a4fe-64300cae12dc)  
Next, he created a trigger where if any data is inserted in the store table, it will be automatically inserted in the customer table, payment column 'Payment made'. 
We see that the customer and store tables are empty:  
![image](https://github.com/kevin-coaquira/function_procedure_cursor_trigger/assets/91737963/67e29a5d-4e79-42bc-8a1d-dde138546da7)  
![image](https://github.com/kevin-coaquira/function_procedure_cursor_trigger/assets/91737963/2c93f29e-b89e-481f-9d12-c43f31344eb8)  
we execute the trigger and we insert the previous insert that is seen and we see that it works  
![image](https://github.com/kevin-coaquira/function_procedure_cursor_trigger/assets/91737963/abf6a173-60cc-43d8-bb8e-aec100b2afe8)  
## Procedure  
In this case we create a procedure where we will look for the name in the customer table and full_name column  
![image](https://github.com/kevin-coaquira/function_procedure_cursor_trigger/assets/91737963/18f02a06-8269-4c6f-903c-cd5b315d651d)  
Once this procedure has been executed to call it we will use <code>CALL buscarCliente();</code>  
![image](https://github.com/kevin-coaquira/function_procedure_cursor_trigger/assets/91737963/75d59199-c2c1-468f-a392-1b18acad6af8)  
In this example I will search for 'Jaume' but it will not find anything because the table is empty
![image](https://github.com/kevin-coaquira/function_procedure_cursor_trigger/assets/91737963/f55a21ef-1bf2-4c28-b979-5d554680f828)  
Next we will insert some values to the table that is the following:  
![image](https://github.com/kevin-coaquira/function_procedure_cursor_trigger/assets/91737963/993d6c4d-d3fe-4fbf-80c2-356bf630aad3)  
![image](https://github.com/kevin-coaquira/function_procedure_cursor_trigger/assets/91737963/37f1e659-cd49-4110-97f8-77bfa9fefddb)  
and it works perfectly now we add an extra value that in this case will be 'Presupuesto':  
![image](https://github.com/kevin-coaquira/function_procedure_cursor_trigger/assets/91737963/58d10253-2285-4581-85a6-34be74bb3a1e)  
![image](https://github.com/kevin-coaquira/function_procedure_cursor_trigger/assets/91737963/298550ce-bf66-4ab7-87b8-5e51753071c0)  
We execute it and we see that the new insert appears plus the previous one when searching for 'Jaume'
## Function
In this function we will count the customers 
![image](https://github.com/kevin-coaquira/function_procedure_cursor_trigger/assets/91737963/b9f7fc57-af00-4d51-bea3-48df99b1e81c)  
In this case I use DETERMINISTIC and READS SQL DATA because mysql has restrictions, otherwise it would not execute correctly.  
We select the table and we can see that there are 4 data:  
1.The first is from the trigger 
2.The second is just insert my name and the third and fourth are tests we did in the **procedure**  
![image](https://github.com/kevin-coaquira/function_procedure_cursor_trigger/assets/91737963/58b96670-450d-41fc-adb6-3b26ef87894f)
Next we can see that the function showed us 4. In this case we use <code>Select GetCustomer</code>  
![image](https://github.com/kevin-coaquira/function_procedure_cursor_trigger/assets/91737963/3d6e784c-a4c7-431f-9807-a64707de51f4)
## LOOP


