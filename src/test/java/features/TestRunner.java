package features;



import org.junit.jupiter.api.Test;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import static org.junit.jupiter.api.Assertions.*;

public class TestRunner {

	
	
// to run single feature in junit5
	  
//	@Karate.Test
//	    Karate testSample() {
//	        return Karate.run("PutCall").relativeTo(getClass());
//	    }
//
//
//	
	
	//tags,parrelel, examples
	
	
	
	
	
	
	//@smoke
	//"@smoke,@regression"
	//"@smoke","regression"
	
	
	@Test
    void testFeature() {	
        Results results = Runner.path("classpath:features/demo.feature").parallel(1);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
	
	

	
	
	
	
	
	
//	@Karate.Test
//    Karate testSample() {
//        return Karate.run("GetCall").relativeTo(getClass());
//    }


}	
	

