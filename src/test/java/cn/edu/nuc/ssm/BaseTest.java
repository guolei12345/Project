package cn.edu.nuc.ssm;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations={"classpath:spring-context.xml","classpath:spring-mvc.xml"})
public class BaseTest {
//	@Test
//	public void testString(){
//		String a = "abcdefg";
//		StringBuffer s = new StringBuffer(a);
//		System.out.println(s.reverse().toString());
//	}
	public static void main(String[] args){
		String a = "abcdefg";
		StringBuffer s = new StringBuffer(a);
		System.out.println(s.reverse().toString());
	}
}

