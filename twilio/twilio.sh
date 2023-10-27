#!/bin/bash

# go to ballerina dir
cd ballerina

# pack ballerina 
bal pack

# push ballerina
bal push --repository local

# remove central pulls 
rm -r ~/.ballerina/repositories/central.ballerina.io/bala/ballerinax/twilio/4.0.0


# move twilio
mv ~/.ballerina/repositories/local/bala/ballerinax/twilio/4.0.0  ~/.ballerina/repositories/central.ballerina.io/bala/ballerinax/twilio/

# come to previous wd
cd ..

# export credentials
export ACCOUNT_SID="AC5cd0a8be91f091f37f9b40bc68c26e55"
export AUTH_TOKEN="28458272187789636c0eefe95741902f"