package kr.co.teaspoon;

import kr.co.teaspoon.dto.Person;
import org.springframework.context.support.GenericApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class IoCTest {

    public static void main(String[] args) {

        GenericApplicationContext factory = new GenericXmlApplicationContext("GenericXmlApplicationContext.xml");
        Person person = (Person) factory.getBean("person");
        //System.out.println(person.toString());
        System.out.println(person.getSample().getNo());
        System.out.println(person.getSample().getName());
        System.out.println(person.getTel());

    }

}
