#include <WiFiManager.h> // https://github.com/tzapu/WiFiManager
#include "DHT.h"
//#include "ArduinoJson.h"
#include "HTTPClient.h"

#define DHTPIN 4
#define DHTTYPE DHT11   // DHT 11
#define FAE 19
#define HUMS 18
#define ONFAN (unsigned long)15000
#define OFFFAN (unsigned long)45000


DHT dht(DHTPIN, DHTTYPE);
unsigned long t;
bool fan = true;
void setup() {
  Serial.begin(115200);
  Serial.println("DHTxx test!");
  digitalWrite(FAE, HIGH);
    digitalWrite(HUMS, HIGH);

  
    WiFi.mode(WIFI_STA);
    Serial.begin(115200);
    WiFiManager wm;
    // wm.resetSettings();
    bool res;
    // res = wm.autoConnect(); // auto generated AP name from chipid
    // res = wm.autoConnect("AutoConnectAP"); // anonymous ap
    res = wm.autoConnect("AutoConnectAP","password"); // password protected ap

    if(!res) {
        Serial.println("Failed to connect");
        // ESP.restart();
    } 
    else {
        //if you get here you have connected to the WiFi    
        Serial.println("connected...yeey :)");
    }

    pinMode(FAE, OUTPUT);  // sets the digital pin 13 as output
    pinMode(HUMS, OUTPUT);

  
    dht.begin();
}
//139.144.77.136

void loop() {
        digitalWrite(HUMS, HIGH);

    delay(1500);
    float temp = dht.readTemperature();     // read temperature
    float hum = dht.readHumidity();
//    if(hum>90){
//      //digitalWrite(HUMS, LOW);  
//    }
//    if(hum<70){
//      digitalWrite(HUMS, HIGH);
//    }

    if(fan==true){
      if(millis()>t+ONFAN){
        t=millis();
        fan=false;
        digitalWrite(FAE,LOW);
      }
    }else{
      if(millis()>t+OFFFAN){
        t=millis();
        fan=true;
        digitalWrite(FAE,HIGH);
      }
    }

  

  Serial.println(t);


    delay(1500);
    
    
    Serial.print("\nHumidity: ");
    Serial.print(hum);
    Serial.print("%  \nTemperature: ");
    Serial.print(temp);

    
      HTTPClient http;
      http.begin("http://139.144.77.136:80/api/add/");
      http.addHeader("Content-Type","application/json");
      String a ="{\"hum\":"+String(hum)+",\"temp\":"+String(temp)+",\"farm\":1"+"}";
      int res = http.POST(a);
      Serial.println(res);
      Serial.println(a);
      
      
      


}
