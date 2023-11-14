// AUTO-GENERATED FILE. DO NOT MODIFY.
// This file is auto-generated by the Ballerina OpenAPI tool.

import ballerina/log;
import ballerina/http;
import ballerina/os;
import ballerina/test;

configurable string apiKey = os:getEnv("CHARITYCHECKPDF_API_KEY");

const EIN = "13-1837418";

ApiKeysConfig apiKeyConfig = {
    subscriptionKey: apiKey
};
Client charityCheckPDF = check new Client(apiKeyConfig, serviceUrl = "https://apidata.guidestar.org/charitycheckpdf");

@test:Config
function testCharitycheckpdf() returns error? {
    log:printInfo("charityCheckPDF -> testCharitycheckpdf()");
    http:Response result = check charityCheckPDF->/v1/pdf/[EIN];
    test:assertEquals(result.getContentType(), "application/pdf");
}
