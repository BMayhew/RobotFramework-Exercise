*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections

*** Variables ***
${url}    http://thetestingworldapi.com/
${id1}    184667

*** Test Cases ***
TC_001-Post_Request
    create session    PostData    ${url}
    &{body}=    create dictionary    first_name=Ritu    middle_name=Garg    Last_name=Sharma    date_of_birth=04/09/1987
    &{header}=    create dictionary    Content-Type=application/json
    ${response}=    post request    PostData    api/studentsDetails    data=${body}    headers=${header}
    ${actual_code}=    convert to string    ${response.status_code}
    should be equal    ${actual_code}    201
    log to console    ${response.content}

TC_002-Put_Request
    create session    PutData    ${url}
    &{body}=    create dictionary    id=184667    first_name=Ritu    middle_name=Chetan    Last_name=Sharma    date_of_birth=04/09/1987
    &{header}=    create dictionary    Content-Type=application/json
    ${response}=    put request    PutData    api/studentsDetails/${id1}    data=${body}    headers=${header}
    ${actual_code}=    convert to string    ${response.status_code}
    should be equal    ${actual_code}    200
    log to console    ${response.content}

TC_003-Get_Request
    create session    GetData    ${url}
    ${response}=    get request    GetData    api/studentsDetails/${id1}
    ${actual_code}=    convert to string    ${response.status_code}
    should be equal    ${actual_code}    200
    log to console    ${response.content}
    ${json_response}=    to json    ${response.content}
    @{first_name_list}=    get value from json    ${json_response}    data.first_name
    ${first_name}=    get from list    ${first_name_list}    0
    log to console    ${first_name}
    should be equal    ${first_name}    Ritu

