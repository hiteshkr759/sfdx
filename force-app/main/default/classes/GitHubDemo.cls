public with sharing class GitHubDemo {
    static List<String> allString = new List<String>();

    public static void addStrings(String inputStrings){
        allString = inputStrings.split(',');
    }

    public static void showStrings(){
        List<String> finalAllStringLocal = processStrings();
        System.debug('finalAllStringLocal -->'+finalAllStringLocal);
    }

    public static List<String> processStrings(){
        List<String> finalAllString = new List<String>(); 
        for(String s : allString){
            Integer random  = Integer.valueof((Math.random() * 10));
            String finalString = s + ' -- ' + String.valueOf(random);
            finalAllString.add(finalString);
        }
        return finalAllString;
    }
}
