package runner;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import org.junit.Test;
import static org.junit.Assert.*;



public class ApiTestRunner {
    @Test
    public void testParallel() {

        Results results = Runner.path("classpath:features").tags("@POEI2-878").parallel(2);
        assertTrue( results.getErrorMessages(), results.getFailCount() == 0);

    }

}