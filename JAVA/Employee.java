import java.util.Scanner;

public class Employee {
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

    public Teacher(String dept, String sub){
        this.dept = dept;
        this.sub = sub;
    }

}
