public class LstDynamic {
    public void mymethod(){
        List<Integer> lValue = new List<Integer>();
        
        	for(Integer i=1; i<=100; i++){
            
                lValue.add(i);
        }
        system.debug('Total number of Value will be ' + lValue.size());
        system.debug('Get the value from Index 50 '+ lValue.get(50));
        
        for(Integer i=1; i<lValue.size(); i++){
            system.debug('Print the index numbers '+ lValue.get(i));
        }
    }

}