/*
 * generated by Xtext 2.10.0
 */
package software.amazon.ionxtext.tests

import com.google.inject.Inject
import org.eclipse.xtext.junit4.InjectWith
import org.eclipse.xtext.junit4.XtextRunner
import org.eclipse.xtext.junit4.util.ParseHelper
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import software.amazon.ionxtext.ion.Datagram

@RunWith(XtextRunner)
@InjectWith(IonInjectorProvider)
class IonParsingTest {

    @Inject
    ParseHelper<Datagram> parseHelper

    @Test
    def void loadModel() {
        val result = parseHelper.parse('''
            "Hello Ion!"
        ''')
        Assert.assertNotNull(result)
    }

}