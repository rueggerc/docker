
### Sample NodeJS used for client connections and Kubernetes 

### Access through curl

#### Get Sensor Data
````
curl --request GET http://localhost:3000/sensor/pi/sensor1/readings
````

#### Save Sensor Data
````
curl --request POST http://localhost:3000/sensor/pi/sensor1/78.33/91.03/readings
````