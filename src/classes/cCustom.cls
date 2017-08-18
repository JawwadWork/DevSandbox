public class cCustom {

    public integer valueOne{ get; set; }
    public integer valueTwo { get; set;}
    public integer result {get; set;}
    public string gSearch {get; set;}
    
    public pagereference addValues(){
        result = ValueOne + ValueTwo;
        return null;
    }
    public pagereference divValues(){
        result = ValueOne / ValueTwo;
        return null;
    }
    public pagereference subValues(){
        result = ValueOne - ValueTwo;
        return null;
    }
    public pagereference mulValues(){
        result = ValueOne * ValueTwo;
        return null;
    }
    public pagereference gGoogleSearch(){
        String sURL = 'https://www.google.com/search?#q=';
        String sLink = sURL + gSearch;
        pagereference pg = new pagereference(sLink);
        return pg;
          
    }
    
}