public class HeyJude{

    private static final String HEY = "Hey Jude ";
    private static final String DON = "don't ";
    private static final String MAK = "make it bad.";
    private static final String BEA = "be afraid.";
    private static final String LET = "let me down.";
    private static final String TAK = "Take a sad song and make it better.";
    private static final String YOW = "You were made to go out and get her.";
    private static final String YOH = "You have found her, now go and get her.";
    private static final String REM = "Remember to ";
    private static final String LEH = "let her into you heart.";
    private static final String LES = "let her under your skin.";
    private static final String THE = "Then you ";
    private static final String CAN = "can start ";
    private static final String BEG = "begin ";
    private static final String TOM = "to make it better ";
    private static final String BET = "better ";
    private static final String NA  = "na ";

    private static final String AND = "And anytime you feel the pain, hey Jude, refrain,\n"
	                            + "Don’t carry the world upon your shoulders.\n"
                                    + "For well you know that it’s a fool who plays it cool\n"
	                            + "By making his world a little colder. \n";

    private static final String SOL = "So let it out and let it in, hey Jude, begin,\n"
	                            + "You’re waiting for someone to perform with.\n"
	                            + "And don’t you know that it’s just you, hey jude, you’ll do,\n"
	                            + "The movement you need is on your shoulder. \n";
    
    public static void main(String[] args){
	
	int i;
	
	for(i = 0; i < 4; i++ ){
	    System.out.print(HEY);
	    System.out.print(DON);
	    
	    if(i == 0 || i == 3){
		System.out.println(MAK);
		System.out.println(TAK);
	    } else if(i == 1){
		System.out.println(BEA);
		System.out.println(YOW);
	    } else {
		System.out.println(LET);
		System.out.println(YOH);
	    }
	    
	    System.out.print(REM);
	    
	    if(i == 0 || i == 2){
		System.out.println(LEH);
	    } else {
		System.out.println(LES);
	    }
	    
	    System.out.print(THE);
	    
	    if(i == 0 || i == 2){
		System.out.print(CAN);
	    } else {
		System.out.print(BEG);
	    }
	    
	    System.out.print(TOM);
	    System.out.println("\n");
	    
	    if(i == 1){
		System.out.println(AND);
	    } else if(i == 2){
		System.out.println(SOL);
	    }
	    
	    int m = 0;
	    if(i == 3){
		while(m < 5){
		    System.out.print(BET);
		    m++;
		}
		System.out.println("oh. \n");
	    }

	    int n = 0; 
	    if(i == 1 || i == 2 || i == 3){
		while(n < 10){
		    System.out.print(NA);
		    n++;
		}
		System.out.println("\n");
	    }
	    
	}
    }
}
