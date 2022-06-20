/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an org are executed whenever Apex code is deployed
 * to a production org to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production org. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the org size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class TreeLocationControllerTest {

    @TestSetup
    static void makeData(){
        Tree__c tree = new Tree__c(Name='Banyan Tree', Benefit__c='Dummy Benefits Here', Picture__c='');
        insert tree;
        // City__c city = new City__c(Name='sample City',Location__c=Location.newInstance(28.635308,77.22496),Target__c=1);
    
        // Tree_Plantation__c treePlantation= new Tree_Plantation__c(Age__c=1997,	Number_Of_Tree_Planted__c=1117);
    }

    @isTest
    static void testGetAllTrees() {
        // TO DO: implement unit test
        List<Tree__c> trees = TreeLocationController.getAllTrees();
        Test.startTest();
        System.assertEquals(1, trees.size(), 'Number of tree records does not match');
        System.assert(trees[0].Name == 'Banyan Tree', 'Name not matched for the tree record');
        Test.stopTest();
    }
}