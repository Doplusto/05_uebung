public class Number {

    static boolean isEven(Integer v) {
        return v % 2 == 0;
    }

    public static void main(String[] args) {

        if (args != null && args.length > 1) {
	        System.out.println("1. Parameter: " + args[0]);
	        System.out.println("2. Parameter: " + args[1]);

            int lower = Integer.parseInt(args[0]);
            int upper = Integer.parseInt(args[1]);

            System.out.println("Paramter lower: " + lower);
            System.out.println("Paramter upper: " + upper);

            for (int i = lower; i <  upper; i++) {
                System.out.println(i + ( isEven(i) ? " ist gerade!" : " ist ungerade!" ));
            }
        }
    }
}
