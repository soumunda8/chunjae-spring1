package kr.co.teaspoon;

import kr.co.teaspoon.dto.Sample;
import org.junit.After;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.AfterClass;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LombokTest {

    private static final Logger log = LoggerFactory.getLogger("kr.co.teaspoon.LombokTest.class");

    @BeforeClass
    public static void testStart() {
        //log.info("테스트 클래스 시작 - 위치 상관 없음");
        System.out.println("테스트 클래스 시작 - 위치 상관 없음");
    }

    @AfterClass
    public static void testFinish() {
        //log.info("테스트 클래스 종료 - 위치 상관 없음");
        System.out.println("테스트 클래스 종료 - 위치 상관 없음");
    }
    
    @Before
    public void testBeforePrint() {
        //log.info("JUnit 테스트 시작");
        System.out.println("JUnit 테스트 시작");
    }

    @Test
    public void testLombok() {

        Sample dto = new Sample();
        dto.setNo(1);
        dto.setName("몬스타엑스");
        log.info(dto.toString());
        System.out.println(dto.toString());

    }

    @Test
    public void testLombok2() {

        Sample dto = new Sample();
        dto.setNo(2);
        dto.setName("손현우");
        log.info(dto.toString());
        System.out.println(dto.toString());

    }

    @After
    public void testAfterPrint() {
        //log.info("JUnit 테스트 종료");
        System.out.println("JUnit 테스트 종료");
    }

}