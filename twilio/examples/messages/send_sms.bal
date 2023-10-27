// Copyright (c) 2023 WSO2 LLC. (http://www.wso2.org).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/io;
import ballerina/os;
import ballerinax/twilio;

// Account configurations
configurable string accountSID = os:getEnv("ACCOUNT_SID");
configurable string authToken = os:getEnv("AUTH_TOKEN");

// This sample demonstrates a scenario where Twilio connector is used to send a text message to a number.
public function main() returns error? {

    // Twilio Client configuration
    twilio:ConnectionConfig twilioConfig = {
        auth: {
            username: accountSID,
            password: authToken
        }
    };

    // Initialize Twilio Client
    twilio:Client twilioClient = check new (twilioConfig);

    // Create request for SMS
    twilio:CreateMessageRequest messageRequest = {
        To: "+94712479175",
        From: "+16513215786",
        Body: "Hello from Ballerina"
    };

    // Send the SMS
    twilio:Message responce = check twilioClient->createMessage(accountSID,messageRequest);
    
    // Print SMS status
    io:print(responce?.status);
}
