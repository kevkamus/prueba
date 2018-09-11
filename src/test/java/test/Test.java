package test;

//import pe.org.aquarius.sicex.util.GenericMethod;

public class Test {

	public static void main(String[] args) {


		/*String str = "129018";
		String str2 = String.format("%10s", str).replace(' ', '0');
		System.out.println(str2);

		int a = 11;
		String with3digits = String.format("%03d", a);
		System.out.println(with3digits);
	
		
		System.out.println(String.format("%-5s", a ).replace(' ', '0'));
		
		
		Double price = 32.0;
	    DecimalFormat decim = new DecimalFormat("0.00");*/
	   // Double price2 = Double.parseDouble(decim.format(price));
	    //System.out.println(price2);
	    
	    /*String s = decim.format(price);
	    System.out.println("s is '"+s+"'");*/
	    
	   /*String var =  String.format(Locale.ROOT, "%.2f", Double.valueOf("32.2345"));
	   
	   System.out.println(var);
	   
	   String s1 = "10.126";
	   
	   DecimalFormatSymbols otherSymbols = new DecimalFormatSymbols(Locale.ROOT);
	   otherSymbols.setDecimalSeparator('.');
	   otherSymbols.setGroupingSeparator(','); 
	   
	   Double f1 = Double.parseDouble(s1);
	   DecimalFormat df = new DecimalFormat(".00");
	   df.setDecimalFormatSymbols(otherSymbols);
	   df.setRoundingMode(RoundingMode.DOWN); 
	   String var2= df.format(f1);
	   System.out.println(var2);*/
		
	   
	   Double input = 10010116.15 ;
	   
//	   String oupt = GenericMethod.numberNotDecimal(String.valueOf(input));
//	   System.out.println(oupt);
	   
	   System.out.println(String.format("%.0f",input));
	   
	   /*String v =  input.substring(input.indexOf('.'));
	   System.out.println(v);
	   System.out.println(v.length());
	   String output = input.substring(0,input.indexOf('.')+3);
	   
	   System.out.println(output);*/
	   
   /*double total = 10010116;
	   String total2 = String.valueOf(total);
	   System.out.println(total2);
	   System.out.println(String.format("%1$,.2f", total2));*/
	}
	
}
