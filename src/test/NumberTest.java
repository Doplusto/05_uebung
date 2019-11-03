import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertFalse;
import org.junit.Test;


public class NumberTest {

  @Test
  public void testIsEven() {
   	
	assertTrue( Number.isEven(6) );
	assertFalse( Number.isEven(5) );

  }
}