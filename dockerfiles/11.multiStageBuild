FROM openjdk:8-jdk-slim AS builder

RUN echo 'public class Main{ public static void main(String[] args) { System.out.println("Hello World"); } }' > Main.java

RUN javac Main.java

FROM openjdk:8-jre-slim
COPY --from=builder /Main.class /


CMD ["java", "Main"]
