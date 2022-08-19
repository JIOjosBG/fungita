#include <WiFiManager.h> // https://github.com/tzapu/WiFiManager
#include "DHT.h"
//#include "ArduinoJson.h"
#include "HTTPClient.h"

#define DHTPIN 4
#define DHTTYPE DHT11   // DHT 11
#define FAE 19
#define HUMS 18

void setup() {
  Serial.begin(115200);
  Serial.println("DHTxx test!");

  
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

  

}
//139.144.77.136

void loop() {
    DHT dht(DHTPIN, DHTTYPE);
    dht.begin();
    delay(5000);
    digitalWrite(FAE, LOW);
    digitalWrite(HUMS, HIGH);
    delay(5000);
    float t = dht.readTemperature();     // read temperature
    float h = dht.readHumidity();
    digitalWrite(FAE, HIGH);
    digitalWrite(HUMS, LOW);
    Serial.print("\nHumidity: ");
    Serial.print(h);
    Serial.print("%  \nTemperature: ");
    Serial.print(t);
      HTTPClient http;
      http.begin("http://192.168.0.107:80/api/add/");
      http.addHeader("Content-Type","application/json");
      String a ="{\"hum\":"+String(h)+",\"temp\":"+String(t)+",\"farm\":1"+"}";
      int res = http.POST(a);
      Serial.println(res);
      Serial.println(a);

}
