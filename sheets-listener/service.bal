import ballerinax/trigger.google.sheets;
import ballerina/io;

configurable sheets:ListenerConfig userInput = {
    spreadsheetId: "15Agro4BpKBJHvP6bT525cEetXl6JaNlPOwoHu6f9oD8"
};

listener sheets:Listener sheetListener = new (userInput);

service sheets:SheetRowService on sheetListener {

    remote function onAppendRow(sheets:GSheetEvent payload) returns error? {
        json? eventData = payload?.eventData;
        // Write your logic here.....
        io:println(eventData);  
    }

    remote function onUpdateRow(sheets:GSheetEvent payload) returns error? {
        json? eventData = payload?.eventData;
        // Write your logic here.....
        io:println(eventData);
    }
}