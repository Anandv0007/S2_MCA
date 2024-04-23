import java.util.Scanner;

class prime{
    public static void main(String args[]){
        Scanner obj = new Scanner(System.in);
        int n,q,flag=0;
        System.out.println("Enter the number : ");
        n = obj.nextInt();
        q=n/2;
        if(n==0 || n==1){
            System.out.println(n+"IS PRIME");
        }
        else{
            for(int i=2;i<=q;i++){
                if(n%i==0){
                     System.out.println(n+"IS NOT PRIME");
                     flag=1;
                     break;
                }
            }
            if(flag==0){
                System.out.println(n+"IS PRIME");
            }
        }
    }
}
