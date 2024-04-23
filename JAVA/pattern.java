import java.util.Scanner;

class pattern{
    public static void main(String args[]){
        Scanner obj = new Scanner(System.in);
        int n;
        System.out.println("Enter n: ");
        n = obj.nextInt();
        for(int i=0;i<n;i++){
            for(int j=0; j<=i;j++){
                System.out.print("* ");
            }
        System.out.println(" ");
        }
    }
}