## Sanitizations

# Remove api.v2010.account & api.v2010. sufixes from the record names for improve user friendlinesss of the record names.

eg: `api.v2010.account.address` will be rename to  `address` in specification resulting type name of `ApiV2010AccountAddress` will be `Address`.

# Remove `available_phone_number_country` from `available_phone_number_country.available_phone_number_toll_free` to avoid the OpenAPI tool reference handling error [`Ballerina only support local references.`](https://github.com/ballerina-platform/ballerina-standard-library/issues/4887) but also improve the user friendliness of the record names.


# Change parameter names due to the this [issue](https://github.com/ballerina-platform/ballerina-standard-library/issues/4882).

startTime<   -> startedOnOrBefore
startTime>   -> startedOnOrAfter
endTime<     -> endedOnOrBefore
endTime>     -> endedOnOrAfter
messageDate< -> loggedOnOrBefore
messageDate> -> loggedOnOrAfter
dateCreated< -> createdOnOrBefore
dateCreated> -> createdOnOrAfter
dateUpdated< -> updatedOnOrBefore
dateUpdated> -> updatedOnOrAfter
dateSent<    -> sentOnOrBefore
dateSent>    -> sentOnOrAfter

