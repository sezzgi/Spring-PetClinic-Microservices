# Spring-PetClinic-Microservices

Enterprise-level application demonstrating microservices architecture using Spring Cloud, featuring service discovery, API gateway, and advanced monitoring capabilities

## Project Highlights

✨ Complete microservices architecture implementation  
✨ Service discovery and configuration management  
✨ API gateway with load balancing  
✨ Advanced monitoring and observability  
✨ Circuit breaker pattern implementation

## Quick Start

1. **Prerequisites**
   - JDK 17 or newer
   - Maven 3.8+
   - Docker & Docker Compose
   - Git

2. **Clone and Build**
   ```bash
   # Clone the repository
   git clone https://github.com/[your-repo]/microservices-spring-cloud-demo
   cd microservices-spring-cloud-demo

   # Build the project
   ./mvnw clean install
   ```

3. **Run Without Docker**
   ```bash
   # Start services in order:
   
   # 1. Start infrastructure services
   cd config-server && ../mvnw spring-boot:run
   cd discovery-server && ../mvnw spring-boot:run

   # 2. Start microservices (in separate terminals)
   cd customers-service && ../mvnw spring-boot:run
   cd visits-service && ../mvnw spring-boot:run
   cd vets-service && ../mvnw spring-boot:run
   ```

4. **Run With Docker** (Recommended)
   ```bash
   # Build images and start all services
   ./mvnw clean install -PbuildDocker
   docker-compose up
   ```

5. **Access Services**
   ```bash
   # Main Components
   Main Application: http://localhost:8080
   Discovery Server (Eureka): http://localhost:8761
   Config Server: http://localhost:8888
   
   # Monitoring Stack
   Grafana Dashboards: http://localhost:3000
   Prometheus: http://localhost:9091
   Tracing (Zipkin): http://localhost:9411
   Spring Admin: http://localhost:9090
   
   # API Gateway
   Hystrix Dashboard: http://localhost:7979
   ```

6. **Verify Installation**
   ```bash
   # Check service registry
   curl http://localhost:8761/eureka/apps
   
   # Test API endpoints
   curl http://localhost:8080/api/customer-service/owners
   curl http://localhost:8080/api/vet-service/vets
   curl http://localhost:8080/api/visit-service/visits
   
   # Monitor service health
   curl http://localhost:8080/actuator/health
   ```

7. **Additional Configuration**
   ```bash
   # MySQL Database (Optional)
   docker run -e MYSQL_ROOT_PASSWORD=petclinic \
             -e MYSQL_DATABASE=petclinic \
             -p 3306:3306 mysql:5.7.8

   # Enable MySQL profile
   ./mvnw spring-boot:run -Dspring.profiles.active=mysql
   ```

Note: 
- Allow a few minutes for all services to register with Eureka
- Check Eureka Dashboard for service health
- Monitor Zipkin for request tracing
- View metrics in Grafana dashboards


## Key Features

• Cloud-Native Architecture
  - Centralized configuration management
  - Service discovery and registration
  - Intelligent routing and load balancing
  - Circuit breaker for fault tolerance

• Advanced Monitoring
  - Real-time metrics with Grafana
  - Distributed tracing with Zipkin
  - Service health monitoring
  - Performance analytics

• Production-Ready
  - Containerization with Docker
  - Database persistence
  - Load testing support
  - High availability design

## License
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) (LICENSE) file for details.
