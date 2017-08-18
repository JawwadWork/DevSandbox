public class ListDemo {
    public void mymethod(){
        List<Integer> LisVar = new List<Integer>();
        LisVar.add(10);
        LisVar.add(20);
        LisVar.add(10);
        LisVar.add(40);
        
        Integer LisSize = LisVar.size();
        system.debug('List size '+ LisSize);
        system.debug('List size '+ lisVar.size());
        Integer iValue = LisVar.get(3);
        system.debug('Index position at 3 will be ' + iValue);
        system.debug('Index position at 2 without mention ' + LisVar.get(2));
        system.debug('Index position at 1 will be '+LisVar.get(1));
        system.debug('Index position at 0 will be ' + LisVar.get(0));
    }

}