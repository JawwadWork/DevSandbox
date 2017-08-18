public class MapDemo {
    
    public void mymethod(){
        Map<String, String> vCountry = new Map<String, String>();
        // Add Country and their currency.
        vCountry.put('America','USD');
        vCountry.put('Germany','EURO');
        vCountry.put('Australia','AUD');
        vCountry.put('Great Britain','POUND');
        vCountry.put('India','RPS');
        
        // Print keys and their values        
        system.debug(vCountry);
        // Get only Germany's Value
        String sGer = vCountry.get('Germany');
        system.debug('Germany currency is ' + sGer);
        Integer iSize = vCountry.size();
        system.debug('The total number of the records are '+ iSize);
        
        for(string Key: vCountry.keySet()){
            // Get the key and its value
            system.debug(Key+'-'+ vCountry.get(key));
        }
        //Search the Key
        String searchAus = 'Australia';
        String searchIndia = 'India';
        String vAustralia = vCountry.get(searchAus);
        Boolean isContain = vCountry.containsKey(searchAus);
        Boolean iContain = vCountry.containsKey(searchIndia);
        system.debug('Are Australia and India in the key list ? ' + isContain + ' - '+ iContain);
        system.debug('Value of Australia is ' + vAustralia +' Value of India is '+ vCountry.get(searchIndia));
        
        // it will only bring the values in the keyset.
        List<String> lValues = vCountry.values();
        system.debug('List Value will be ' + lValues);
        for(String vList:lValues){
            system.debug(vList);
        }
        // It will only bring the set from the keyset
        Set<String> sValues = vCountry.keySet();
        for(String sSet:sValues){
            system.debug(sSet);
        }
        Map<String,List<String>> cCategory = new Map<String, List<String>>();
        	String cCategory1 ='Transport';
            List<String> lCategory1 = new List<String>();
        	lCategory1.add('Car');
        	lCategory1.add('Bus');
        	lCategory1.add('Motorcycle');
        	lCategory1.add('Cycle');
        cCategory.put(cCategory1, lCategory1);
        system.debug(cCategory.get(cCategory1));
        system.debug(cCategory.get('Transport'));
        system.debug(cCategory);
        system.debug('===========================');
        system.debug('Fruits');
        system.debug('===========================');
        
      List<String> vFruits = new List<String>{'Apple','Orange','Banna'};
          String cCategory2 ='Fruit';
        cCategory.put(cCategory2,vFruits);
        system.debug(cCategory);
           
 
        for(String vCateg:cCategory.keySet()){
        	system.debug(vCateg+'-'+cCategory.get(vCateg)); 
            
                List<String> vFru = cCategory.get('Fruit');
         		system.debug('The value in fruits are ' + vFru);
            
            	List<String> vTrans = cCategory.get('Transport');
            	system.debug('The values in Transport are ' + vTrans);
        }
           
        
    }
}