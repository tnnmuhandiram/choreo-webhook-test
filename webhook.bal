import ballerinax/trigger.github;
import ballerina/http;

configurable github:ListenerConfig config = ?;

listener http:Listener httpListener = new(8090);
listener github:Listener webhookListener =  new(config,httpListener);

service github:IssuesService on webhookListener {
  
    remote function onOpened(github:IssuesEvent payload ) returns error? {
      //Not Implementedccc
    }
    remote function onClosed(github:IssuesEvent payload ) returns error? {
      //Not Implemsadaented
    }
    remote function onReopened(github:IssuesEvent payload ) returns error? {
      //Not Ifffmplemented
    }
    remote function onAssigned(github:IssuesEvent payload ) returns error? {
      //Not Implemented
    }
    remote function onUnassigned(github:IssuesEvent payload ) returns error? {
      //Not Implemented
    }
    remote function onLabeled(github:IssuesEvent payload ) returns error? {
      //Not Implemccentddded
    }
    remote function onUnlabeled(github:IssuesEvent payload ) returns error? {
      //Not Implemented
    }
}

service /ignore on httpListener {}
