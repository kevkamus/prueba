package test;

import java.text.DecimalFormat;

public class TestMethod {

	public static void main(String[] args) {
	
		
		/*Double a = new Double("100");
		
		System.out.println(String.valueOf(a));
		DecimalFormat format = new DecimalFormat("0.#");
		System.out.println(format.format(a));*/
		
		/*List<Proyecto> numbers = Collections.unmodifiableList(
			    Arrays.asList(5,3,1,2,9,5,0,7)
			);*/
		
		/*List<Proyecto> numbers = new ArrayList<Proyecto>();
		
		Proyecto p1= new Proyecto(1);
		Proyecto p2= new Proyecto(2);
		Proyecto p3= new Proyecto(3);
		Proyecto p4= new Proyecto(4);
		Proyecto p5= new Proyecto(5);
		Proyecto p6= new Proyecto(6);
		Proyecto p7= new Proyecto(7);
		Proyecto p8= new Proyecto(8);
		Proyecto p9= new Proyecto(9);
		numbers.add(p1);
		numbers.add(p2);
		numbers.add(p3);
		numbers.add(p4);
		numbers.add(p5);
		numbers.add(p6);
		numbers.add(p7);
		numbers.add(p8);
		numbers.add(p9);
		
		
		
		List<List<Proyecto>> parts = GenericMethod.chopped(numbers, 4);
		//System.out.println(parts);
		for(List<Proyecto> o: parts){
			System.out.println(o);
		}*/
		
		String var = "123.1000";
		//String d = "123.10";
		//Double de = 12.2;
		//System.out.println(GenericMethod.isFormatFourDecimal(var));
		System.out.println(String.valueOf(var));
		//System.out.println(String.format("%010d", d));
		Double price = 32.0;
	    DecimalFormat decim = new DecimalFormat("0.0000");
	    Double price2 = Double.parseDouble(decim.format(price));
	    System.out.println(price2);
		
	}
}
