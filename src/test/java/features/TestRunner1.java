package features;

import com.intuit.karate.junit5.Karate;

public class TestRunner1 {
	
	@Karate.Test
    Karate testSample() {
        return Karate.run("GetCall.feature").relativeTo(getClass());
    }
}
