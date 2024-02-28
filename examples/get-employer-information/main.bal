// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.org).
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

import ballerinax/candid.premier;

configurable string subscriptionKey = ?;

// Candid API Key Configurations
premier:ApiKeysConfig apiKeyConfig = {
    subscriptionKey: subscriptionKey
};
premier:Client premier = check new (apiKeyConfig);

function getV3Premier() returns premier:V3PublicProfile|error {
    premier:V3PublicProfile result = check premier->/v3/["EMP-ID-NUM"];
    return result;
}
