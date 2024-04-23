import java.util.Scanner;

class Employee {
    public int empid,salary;
    public String  name,address;

    public Employee(int empid,int salary,String name, String address){
        this.empid=empid;
        this.salary=salary;
        this.name = name;
        this.address=address;  
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter employee ID : ");
        int empid = sc.nextInt();
        System.out.println("Enter name : ");
        String name = sc.nextLine();
        System.out.println("Enter Address : ");
        String address = sc.nextLine();
        System.out.println("Enter the salary : ");
        int salary = sc.nextInt();

        Employee e = new Employee(empid, salary, name, address);
        sc.close();
    }
}

class Teacher extends Employee{
    public String dept;
    public String sub;

    public Teacher(String dept, String sub, int empid, int salary, String name, String address){
        super(empid, salary, name, address);
        this.dept = dept;
        this.sub = sub;
    }

}

public class  MainClass {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Teacher[] T =new Teacher[3];
        System.out.println("Enter the details:");
        for (int i =0 ;i<3;i++) {
        System.out.println("Enter employee ID : ");
        int empid = sc.nextInt();
        System.out.println("Enter name : ");
        String name = sc.nextLine();
        System.out.println("Enter Address : ");
        String address = sc.nextLine();
        System.out.println("Enter salary : ");
        int salary = sc.nextInt();
        System.out.println("Enter department : ");
        String dept = sc.next();
        System.out.println("Enter subject : ");
        String sub = sc.next();
        T[i] = new Teacher(dept, sub, empid, salary, name, address);
        }

    }
}