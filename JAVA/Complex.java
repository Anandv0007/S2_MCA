import java.util.Scanner;

public class Complex {

    double real;
    double imag;

    public Complex(double real, double imag) {
        this.real = real;
        this.imag = imag;
    }

    public static void main(String[] args) {
        float a1,a2,b1,b2;
        Scanner obj = new Scanner(System.in);
        System.out.println("Enter the number 1 real part : ");
        a1 = obj.nextFloat();
        System.out.println("Enter the number 1 image part : ");
        a2 = obj.nextFloat();
        System.out.println("Enter the number 2 real part : ");
        b1 = obj.nextFloat();
        System.out.println("Enter the number 2 image part : ");
        b2 = obj.nextFloat();
        Complex n1 = new Complex(a1,a2),
                n2 = new Complex(b1,b2),
                temp;

        temp = add(n1, n2);

        System.out.printf("Sum = %.1f + %.1fi", temp.real, temp.imag);
        obj.close();
    }

    public static Complex add(Complex n1, Complex n2)
    {
        Complex temp = new Complex(0.0, 0.0);

        temp.real = n1.real + n2.real;
        temp.imag = n1.imag + n2.imag;

        return(temp);
    }
}