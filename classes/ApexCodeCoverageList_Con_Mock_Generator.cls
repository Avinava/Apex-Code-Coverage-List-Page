/*
*    @Author : Avi (avidev9@gmail.com)
*    @Description : HTTPMOCK test class for ApexCodeCoverageList_Con
*
**/
@isTest
public class ApexCodeCoverageList_Con_Mock_Generator implements HttpCalloutMock{
    public HTTPResponse respond(HTTPRequest req) {
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('{"foo":"bar"}');
        res.setStatusCode(200);
        return res;
    }
}