/*
*    @Author : Avi (avidev9@gmail.com)
*    @Description : Unit test class for ApexCodeCoverageList_Con
*
**/
@isTest
private class ApexCodeCoverageList_Con_Test{
    static testMethod void testApexCodeCoverageList(){
        Test.setMock(HttpCalloutMock.class, new ApexCodeCoverageList_Con_Mock_Generator());
        System.assertNotEquals(NULL,ApexCodeCoverageList_Con.fetchOrgCoverage());
        System.assertNotEquals(NULL,ApexCodeCoverageList_Con.fetchCodeCoverage());
        System.assertNotEquals(NULL,ApexCodeCoverageList_Con.fetchClassOrTriggerById(
                                                                                [
                                                                                    SELECT 
                                                                                        Id 
                                                                                    FROM 
                                                                                        ApexClass 
                                                                                    WHERE 
                                                                                        Name='ApexCodeCoverageList_Con_Test'
                                                                                    ].Id)
                                                                                );
    }
}