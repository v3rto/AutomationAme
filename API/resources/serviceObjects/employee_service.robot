*** Variables ***

${CREATE_EMPLOYEE_ENDPOINT}     /create                 #Create new record in database
${GET_EMPLOYEE_ENDPOINT}        /employee/              #Get a single employee data
${DELETE_EMPLOYEE_ENDPOINT}     /delete/                #Delete an employee record

### PAYLOAD PATH

${JSON_CREATE_EMPLOYEE}         resources/support/payload/create_employee.json