# spring-hexagonal

`sprint-hexagonal` is a Spring Boot native application template designed to accelerate the development of Java/Kotlin projects following a clean/hexagonal architecture. With built-in support for modern technologies like Kotlin, Spring Boot, and GraalVM, this template streamlines the setup process and empowers developers to focus on building high-quality applications.

## Modules

- **commons**: Contains common utilities and shared code.
- **domain**: Includes core domain entities and business logic.
- **application**: Manages application services and use cases.
- **adapters**: Contains adapters for different frameworks and technologies.
    - **example**: Demonstrates integration with Spring Boot and Jackson.
- **adapters-bundle**: Bundles multiple adapters.
- **bootloader**: Bootstraps the application.

## Technology Stack

- **Kotlin**: For concise and expressive code.
- **Spring Boot**: For application configuration and management.
- **Maven**: As the build and dependency management tool.

## Native Image Support

The project includes support for native image generation using GraalVM.

## Usage

To use this template:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/bandrefilipe/spring-hexagonal.git
    cd spring-hexagonal
    ```

2. **Build the project**:
    ```bash
    ./mvnw clean install
    ```

3. **Run the application**:
    ```bash
    ./mvnw spring-boot:run -pl bootloader
    ```

4. **Compile to Native Image** (Optional):

   If you want to compile the application to a native image using GraalVM, follow these additional steps:

    - Install GraalVM and set it up properly.
    - Run the following command to compile the application:
      ```bash
      ./mvnw -Pnative package
      ```
    - The native image will be available in `bootloader/target/`
      
      Note: Compiling to a native image requires additional setup and may not be necessary for all use cases. Consult the GraalVM documentation for more details.

## Next Steps

Once the project is set up, you can start developing your application by modifying and adding new modules, services, and components as per your requirements.
