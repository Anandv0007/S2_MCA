import java.util.Scanner;

class fibo{
    public static void main(String args[]){
        int a=0, b=1;
        Scanner obj = new Scanner(System.in);
        int n;
        System.out.println("Enter the limit : ");
        n = obj.nextInt();
        System.out.println(a);
        System.out.println(b);
        for(int i=0;i<n-2;i++){
            int c;
            c = a+b;
            System.out.println(c);
            a=b;
            b=c;
        }
    }
}