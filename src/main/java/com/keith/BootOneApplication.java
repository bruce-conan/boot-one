package com.keith;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = {"com.keith"})
@MapperScan("com.keith.**.dao")
public class BootOneApplication {

	public static void main(String[] args) {
		SpringApplication.run(BootOneApplication.class, args);
	}
}
