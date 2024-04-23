import java.util.Scanner;

class palindrome{
    public static void main(String args[]){
        Scanner obj = new Scanner(System.in);
        int num;
        System.out.println("Enter the number : ");
        num = obj.nextInt();
        int temp,sum=0;
        temp=num;
        while(num>0){
            int r;
            r=num%10;
            sum = (sum*10)+r;
            num=num/10;
        }
        if(sum==temp){
            System.out.println("Number is palindrome");
        }
        else{
            System.out.println("Number is not palindrome");
        }
    }
}