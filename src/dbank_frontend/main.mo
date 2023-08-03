import Text "mo:base/Text";
import Blob "mo:base/Blob";

actor {
    type HeaderField = (Text, Text);

    type HttpResponse = {
    status_code: Nat16;
    header: [HeaderField];
    body: Blob;
    };

    public query func http_request() : async HttpResponse {
        // Your code to handle the incoming HTTP request goes here
        return {
            status_code = 200;
            header = [("content-type", "text/plain")];
            body = Text.encodeUtf8("Hello, World!");
        };
    };
}