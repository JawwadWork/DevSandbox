public class ForEachLoopTest {
    public void mymethod(){
        List<Integer> lValue = new List<Integer>();
        for(Integer i=0; i<100; i++){
            lValue.add(i);
        }
        system.debug('The total size of the Array will be ' + lValue.size());
        /** New way of defining Loop */
        
        for(Integer iValue:lValue){
            system.debug('Number = '+ iValue);
            
        }
    }

}