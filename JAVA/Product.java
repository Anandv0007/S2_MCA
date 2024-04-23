import java.util.Scanner;

public class Product{
    int pcode;
    String pname;
    int price;

    public void readValue(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter product code : ");
        this.pcode = sc.nextInt();
        System.out.println("Enter product name : ");
        this.pname = sc.next();
        System.out.println("Enter price : ");
        this.price = sc.nextInt();
        sc.close();
    }

    public static void main(String[] args){
        Product p1 = new Product();
        Product p2 = new Product();
        Product p3 = new Product();

        p1.readValue();
        p2.readValue();
        p3.readValue();

        System.out.println("Lowest Price : ");
        if(p1.price<p2.price){
            if(p2.price<p3.price){
                System.out.print(p3.price);
            }
            else{
                System.out.print(p2.price);
            }
        }else if(p1.price<p3.price){
            System.out.print(p3.price);
        }else{
            System.out.print(p1.price);
        }
    }
}