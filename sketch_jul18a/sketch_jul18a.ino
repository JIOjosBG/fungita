#include <WiFiManager.h> // https://github.com/tzapu/WiFiManager
#include "DHT.h"
#include "ArduinoJson.h"
#include "HTTPClient.h"

#define DHTPIN 4
#define DHTTYPE DHT11   // DHT 11


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

}

void loop() {
    DHT dht(DHTPIN, DHTTYPE);
    dht.begin();
    float t = dht.readTemperature();     // read temperature
    float h = dht.readHumidity();
    Serial.print("\nHumidity: ");
    Serial.print(h);
    Serial.print("\n%  Temperature: ");
    Serial.print(t);
    delay(10000);
      HTTPClient http;
      http.begin("http://192.168.0.107:8000/api/add/");
      http.addHeader("Content-Type","application/json");
      String a ="{\"hum\":"+String(h)+",\"temp\":"+String(t)+"}";
      int res = http.POST(a);
      Serial.println(res);
      Serial.println(a);

}
