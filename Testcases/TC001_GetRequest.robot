*** Settings ***
Library  RequestsLibrary


*** Variables ***
${API_Base_Endpoint}  https://hv-services.euw1-1.dev.livin.digital.engie.com/livin-hv-services/referential/api/v2/tenants



*** Test Cases ***
TC_001_Get_Request_Fetch_Status_Code
    Create Session  Api_Testing  ${API_Base_Endpoint}
    ${Get_Response}=  Get On Session  Api_Testing  ${API_Base_Endpoint}
    Log to console  ${Get_Response.status_code}
    Log to console  ${Get_Response.content}
    ${statusCode}=  convert to string  ${Get_Response.status_code}
    should be equal  ${statusCode}  200