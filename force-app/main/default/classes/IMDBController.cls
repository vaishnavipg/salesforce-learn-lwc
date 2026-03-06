public with sharing class IMDBController {
     @AuraEnabled(cacheable=true)
    public static Object getMovies(string searchText){
        

        // Create a new HTTP request object
        HttpRequest req = new HttpRequest();
        // Set the endpoint URL of the external service
        //remote site settings
        //req.setEndpoint('https://api.collectapi.com/imdb/imdbSearchByName?query='+searchText);
        //named creadentials
        req.setEndpoint('callout:IMDB/imdb/imdbSearchByName?query='+searchText);
        // Set the HTTP method (GET, POST, etc.)
        req.setMethod('GET');
        // Set any request body if necessary
        // req.setBody('Your request body here');

        // Add any headers needed for the request
        //req.setHeader('Authorization', 'apikey 1QmlFC8eeAOgkaNCXBiIJV:6EBip9TjTGcbUi5kPulE74');

        // Create a new HTTP object to send the request
        Http http = new Http();
        try {
            // Send the HTTP request and store the response
            HttpResponse res = http.send(req);

            // Parse and handle the response as needed
            // For example:
            if (res.getStatusCode() == 200) {

                return JSON.deserializeUntyped(res.getBody());

            } else {

                throw new AuraHandledException(
                    'API Error: ' + res.getStatusCode() + ' - ' + res.getStatus()
                );
            }

        } catch (Exception e) {

            throw new AuraHandledException(e.getMessage());
        }
    }
    }