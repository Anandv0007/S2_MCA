import java.util.Scanner;

class fact{
    public static void main(String args[]){
        Scanner obj = new Scanner(System.in);
        int num,f=1;
        System.out.println("Enter the number : ");
        num = obj.nextInt();
        for(int i=1;i<=num;i++){
            f=f*i;
        }
        System.out.println("Factorial of the number : "+f);
    }
}
