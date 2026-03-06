public with sharing class DutyPharmacyService {

    @AuraEnabled(cacheable=true)
    public static Object getDutyPharmacy(String city, String district) {

        if (String.isBlank(city) || String.isBlank(district)) {
            throw new AuraHandledException('City and District are required.');
        }

        // Construct full endpoint URL
        String endpoint = 'https://api.collectapi.com/health/dutyPharmacy'
            + '?il=' + EncodingUtil.urlEncode(city, 'UTF-8')
            + '&ilce=' + EncodingUtil.urlEncode(district, 'UTF-8');

        HttpRequest req = new HttpRequest();
        req.setEndpoint(endpoint);
        req.setMethod('GET');

        // Hardcoded headers
        req.setHeader('authorization',
            'apikey 73NdQArOU5acZMx01Nh7To:4apdHvXVe2R9rec1EEIcuE');
        req.setHeader('content-type', 'application/json');

        Http http = new Http();

        try {
            HttpResponse res = http.send(req);

            System.debug('Status Code: ' + res.getStatusCode());
            System.debug('Response Body: ' + res.getBody());

            if (res.getStatusCode() == 200) {
                return JSON.deserializeUntyped(res.getBody());
            } else {
                throw new AuraHandledException(
                    'API Error: ' + res.getStatusCode() + ' - ' + res.getBody()
                );
            }

        } catch (Exception e) {
            throw new AuraHandledException('Callout Failed: ' + e.getMessage());
        }
    }
}