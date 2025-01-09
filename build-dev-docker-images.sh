./mvnw clean package
docker build  -t "petclinic-admin-server:dev" ./spring-petclinic-admin-server
docker build  -t "petclinic-api-gateway:dev" ./spring-petclinic-api-gateway
docker build  -t "petclinic-config-server:dev" ./spring-petclinic-config-server
docker build  -t "petclinic-customers-service:dev" ./spring-petclinic-customers-service
docker build  -t "petclinic-discovery-server:dev" ./spring-petclinic-discovery-server
docker build  -t "petclinic-hystrix-dashboard:dev" ./spring-petclinic-hystrix-dashboard
docker build  -t "petclinic-vets-service:dev" ./spring-petclinic-vets-service
docker build  -t "petclinic-visits-service:dev" ./spring-petclinic-visits-service
docker build  -t "petclinic-grafana-server:dev" ./docker/grafana
docker build  -t "petclinic-prometheus-server:dev" ./docker/prometheus