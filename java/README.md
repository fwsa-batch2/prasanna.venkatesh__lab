# java

## What is Java?
#### Java is a programming language and a platform. Java is a high level, robust, object-oriented and secure programming language.

## Install jdk
#### Install JDK Click this link https://www.oracle.com/java/technologies/downloads/

## JVM-JRE-JDK
![New Project (2)](https://user-images.githubusercontent.com/83388298/161717436-7b3c45ba-a123-4c88-906a-df2334479c37.png)

## Why we use class,public,static,void,main,string args[]

### ``class`` : class keyword is used to declare classes in Java
### ``public`` : It is an access specifier. Public means this function is visible to all.
### ``static`` : static is again a keyword used to make a function static. To execute a static function you do not have to create an Object of the class. The main() method here is called by JVM, without creating any object for class.
### ``void`` : It is the return type, meaning this function will not return anything.
### ``main`` : main() method is the most important method in a Java program. This is the method which is executed, hence all the logic must be inside the main() method. If a java class is not having a main() method, it causes compilation error.
### ``String args[]`` : This represents an array whose type is String and name is args. We will discuss more about array in Java Array section.

## Java basic program

```java
Class basic{
           Public static void main(string args[]){
           System.out.println(“Hello java”);
           }
}
```

## Command line argument in java

```java
class basic{
    public static void main(String args[]){
         for(int i=0; i<args.length; i++){
                 System.out.println(args[i]);
        }
}
}
```
## Multi and single line command in java
### Single line command ```// command ```
### Multi line commend ```/* command */ ```

## variables in java

```java
    public static void main(String args[]){
         String name = "Prasanna venkatesh";
         int age = 21;
         float percentage = 78.7f;
         char gender = 'M';
         boolean married = false;
         System.out.println("name : " + name);
         System.out.println("age : " + age);
         System.out.println("percentage : " + percentage);
         System.out.println("gender : " + gender);
         System.out.println("married  : " + married);
        }
   }
```
## Types of casting in java
### Widening casting
``` byte -> short -> char -> int -> long -> float -> double ```
### Narrow casting
``` Double -> float -> long -> int -> char -> short -> byte ```
```java
class basic{
    public static void main(String args[]){
        int a = 10;
        double b = a, c = 25.456;
        int d = (int)c;
        System.out.println("int : " + a);
        System.out.println("double : " + b);
        System.out.println("double : " + c);
        System.out.println("int : " + d);
       }
  }
 ```
 
 ## Arithmetic operator in java 
 
 ```java
class basic{
    public static void main(String args[]){
        int a = 10, b=20;
        System.out.println("Add : " + (a+b));
        System.out.println("multi : " + (a*b));
        System.out.println("Sub : " + (a-b));
        System.out.println("div : " + (a/b));
        System.out.println("modular : " + (a%b));
       }
  }
```

## Arithmetic assignment operator in java 

```java
class basic{
    public static void main(String args[]){
        int a = 10;
        System.out.println(a);
        a += 10;
        System.out.println(a);
        a -= 10;
        System.out.println(a);
        a *= 10;
        System.out.println(a);
        a /= 10;
        System.out.println(a);
        a %= 10;
        System.out.println(a);
       }
  }
```

## relational oprator in java 

``` java 
class basic{
    public static void main(String args[]){
        int a = 100, b=24;
        System.out.println("Equal to "+ (a==b));
        System.out.println("less than "+(a<b));
        System.out.println("grater than "+(a > b));
        System.out.println("not equal than "+(a != b));
        System.out.println("less than or equal to "+(a <= b));
        System.out.println("grater than or equal to "+(a >= b));
       }
  }
  ```
  ## logical operator in java 
```java 
class basic{
    public static void main(String args[]){
        int a = 100, b=24;
        System.out.println("And && "+ (a>b && a>b));
        System.out.println("or || "+ (a>b || a>b));
       }
  }
  ```
  
 
 ## Conditional and ternary operator in java
 
 ```java
class basic{
    public static void main(String args[]){
        int a = 100, b=24,c;
        c=a>b?a:b;
        System.out.println("The greatest number is"+ c);
        int d = 100, e=24,f;
        f=d<e?d:e;
        System.out.println("The lowest number is"+ f);
       }
  }
  ```

## Unary operator in java 

```java
class basic{
    public static void main(String args[]){
        int a = 10;
        System.out.println(a);
            a++; //post increment
        System.out.println(a);
            ++a; //pre increment
        System.out.println(a);
            a--; //post decrement
        System.out.println(a);
            --a; //pre decrement
        System.out.println(a);
       }
  }
  ```
  ## bitwise or shift operators in java
  
  ```java
class basic{
    public static void main(String args[]){
        int a=2,b=3;
        System.out.println("bitwise and " + (a&b));
        System.out.println("bitwise or " + (a|b));
        System.out.println("bitwise Xor " + (a^b));
        System.out.println("bitwise not " + (~a));
       }
  }

  ```
  
  ## Scanner class
  
  ```java
import java.util.Scanner;

public class basic{
    public static void main(String args[]){

        Scanner in = new Scanner(System.in);
        //a2+b2+2ab
        int a,b,c;
        a=in.nextInt();2
        b=in.nextInt();
        c=(a*a)+(b*b)+(2*a*b);

        System.out.println(c);
       }
  }
  ```

## If statement

```java
import java.util.Scanner;

public class basic{
    public static void main(String args[]){

        Scanner in = new Scanner(System.in);
        int a;
        System.out.println("Enter value for a :");
        a=in.nextInt();
        if(a>=17){
            System.out.println("You are eligible for apply");
        }
       }
  }
  ```
  
  ## If-else statement
  
  ```java
import java.util.Scanner;

public class basic{
    public static void main(String args[]){

        Scanner in = new Scanner(System.in);
        int a;
        System.out.println("Enter value for a :");
        a=in.nextInt();
        if(a>=17){
            System.out.println("You are eligible for apply");
        }else{
            System.out.println("You are not eligible for apply");
       }
  }}

```

## else-if statement

```java
import java.util.Scanner;

public class basic{
    public static void main(String args[]){
        Scanner in = new Scanner(System.in);
        float a;
        System.out.println("Enter your mark :");
        a=in.nextfloat();
        if(a>=90 && a<=100){
            System.out.println("grade A");
        }else if(a>=80 && a<=89){
            System.out.println("Grade B");
       }else if(a>=70 && a<=79){
            System.out.println("Grade C");
       }else{
            System.out.println("Grade D");
       }
  }
  }
  ```

## Nested if statement
```java
import java.util.Scanner;
public class basic{
    public static void main(String args[]){
        Scanner out = new Scanner(System.in);
        System.out.println("Enter your marital status :");
        char ele = out.next().charAt(0);

        if(ele == 'u' || ele == 'U'){
            System.out.println("Male/Female :");
            char gender = out.next().charAt(0);
            if(gender == 'f' || gender == 'F'){
                System.out.println("Enjoy your life doli");
            }else {
                System.out.println("Enjoy your life tholare");
            }
           
        }else if(ele == 'm' || ele == 'M'){
            System.out.println("lifefa tholachitiya pangu");
        }else{
            System.out.println("Bee happy and safe");
        }
  }}
```

## Switch case statement

```java
import java.util.Scanner;
public class basic{
    public static void main(String args[]){
        System.out.println("Enter 1 is Addition :");
        System.out.println("Enter 2 is subtraction :");
        System.out.println("Enter 3 is multiplication :");
        System.out.println("Enter 4 is deviation :");
        System.out.println("Enter your choice :");
        int a,b,ch;
        Scanner output = new Scanner(System.in);
        ch = output.nextInt();
        System.out.println("Enter 2 numbers :");
        a=output.nextInt();
        b=output.nextInt();
        switch(ch){
            case 1:
                    System.out.println("Enter 1 is Addition :" +(a+b));
                    break;
            case 2:
                    System.out.println("Enter 2 is subtraction :" + (a-b));
                    break;
            case 3:
                    System.out.println("Enter 3 is multiplication:"+(a*b));
                    break;
            case 4:
                    System.out.println("Enter 4 is deviation :" + (a/b));
                    break;
            default:
                    System.out.println("invalid selection");
                    break;
            }
          }
        }
```

## Group switch case statement
```java
import java.util.Scanner;
public class basic{
    public static void main(String args[]){
        char a;
        Scanner output = new Scanner(System.in);
        System.out.println("Enter letter :");
        a = output.next().charAt(0);
        switch(a){
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':
        case 'A':
        case 'E':
        case 'I':
        case 'O':
        case 'U':         
        System.out.println(a+" is vowel");
        break;
        default:
        System.out.println(a+" is not vowel");
        break;
}}}
```

## Factorial in java
```java
import java.util.Scanner;
public class basic{
    public static void main(String[] args){
        System.out.println("Enter your limit : ");
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int f = 1;
        for(int i=1;i<=n;i++){
           f=f*i;
        }
        System.out.println(f);
    }
}
```

## While - loop statement in java
```java
import java.util.Scanner;
public class basic{
    public static void main(String[] args){
        System.out.println("Enter your limit : ");
        Scanner in = new Scanner(System.in);
        int n = in.nextInt(),i = 1;
        while(i<=n){
           System.out.println(i);
           i++;
        }
      }
   }
   ```
   
   ## Do - while loop statement in java
   ```java
import java.util.Scanner;

public class basic{
    public static void main(String[] args){
        System.out.println("Enter your limit : ");
        Scanner in = new Scanner(System.in);
        int n = in.nextInt(),i = 2;
        do{
           System.out.println(i);
           i=i+2;
        }while(i<=n);
   }
}
```

## For loop statement in java
```java
import java.util.Scanner;

public class basic{
    public static void main(String[] args){
        System.out.println("Enter your limit : ");
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        for(int i = 1;i<=n;i++){
            System.out.println(i);
        }
   }
}
```

## Break and continue statement in java
```java
public class basic {
    public static void main(String[] args) {
        for (int i = 1; i <= 10; i++) {
            if(i==5)
            continue;
            System.out.println(i);
            if(i==8)
            break;
        }
    }
}
```

## Enhanced for loop statement in java
```java
public class basic{
    public static void main(String[] args){
        String names[]={"Prasanna","Mukil","Madhan"};
        for(String n : names){
            System.out.println(n);
        }
   }}
   ```
## Nested for loop statement in java
```java
public class basic {
    public static void main(String[] args) {
        for (int i = 1; i <= 5; i++) {
            for (int w = 1; w <= 5; w++) {
                System.out.print("*");
            }
            System.out.println("");
        }
     }
  }
```

## Factorial in java
```java
import java.util.Scanner;
public class basic{
    public static void main(String[] args){
        System.out.println("Enter your limit : ");
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int f = 1;
        for(int i=1;i<=n;i++){
           f=f*i;
        }
        System.out.println(f);
    }
}
```

## Average of given n number in java
```java
import java.util.Scanner;
public class basic{
    public static void main(String[] args){
        System.out.println("Enter your limit : ");
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int sum = 0,a;
        for(int i=1;i<=n;i++){
            System.out.println("Enter your value "+i+" :");
            a = in.nextInt();
            sum+=a;
        }
        System.out.println(sum/n);
    }
}
```

## Fibonacci Series in java
```java
import java.util.Scanner;
public class basic{
    public static void main(String[] args){
        System.out.println("Enter your limit : ");
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int a = -1,b=1,c;
        for(int i=1;i<=n;i++){
            c=a+b;
            System.out.println(c);
            a=b;
            b=c;
        }
    }
}
```

## Reverse of n digit number in java
```java
import java.util.Scanner;
public class basic{
    public static void main(String[] args){
        System.out.println("Enter your value : ");
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int reverse = 0, rem;
        while(n!=0){
            rem=n%10;
            reverse = (reverse*10)+rem;
            n=n/10;
        }
        System.out.println(reverse);
    }
}
```

## Armstrong Number in java
```java
import java.util.Scanner;
public class basic{
    public static void main(String[] args){
        System.out.println("Enter your value : ");
        Scanner in = new Scanner(System.in);
        int number = in.nextInt();
        int temp = number;
        int d1,d2,d3;
        d1 = temp%10;
        temp = temp/10;
        d2 = temp%10;
        temp = temp/10;
        d3 = temp%10;
        temp=temp/10;
        int result = (d1*d1*d1)+(d2*d2*d2)+(d3*d3*d3);
        if(number == result){
            System.out.println(number+" is armstrong number");
        }else{
            System.out.println(number+" is not armstrong number");
        }
    }
 }
 ```

## Armstrong Number within 100 - 999 in java
```java
public class basic{
    public static void main(String[] args){
        int d1,d2,d3,temp,result;
        for(int i=100; i<+999; i++){

            temp = i;
            d3 = temp%10;
            temp = temp/10;
   
            d2 = temp%10;
            temp = temp/10;
   
            d1 = temp%10;
            result = (d1*d1*d1)+(d2*d2*d2)+(d3*d3*d3);
           
        if(i == result){
            System.out.println(i+" is armstrong number");
        }
    }
}
}
```

## Find factors in java
```java
import java.util.Scanner;
public class basic{
    public static void main(String[] args){
        Scanner in = new Scanner(System.in);
        System.out.println("Enter your number : ");
        int n = in.nextInt();
        for (int i = 1; i <= n; i++){
            if(n%i==0){
                System.out.println(i);
            }
        }
    }
}
```

## Find prime number in java
```java
import java.util.Scanner;
public class basic{
    public static void main(String[] args){
        Scanner in = new Scanner(System.in);
        System.out.println("Enter your number : ");
        int n = in.nextInt();
        int f = 0;
        for (int i = 1; i <= n; i++){
            if(n%i==0){
                f++;
            }
        }
        if(f==2){
            System.out.println(n +" is prime number");
        }else{
            System.out.println(n +" is not prime number");
        }
    }}
```

## Find the given number is perfect number are not
```java
import java.util.Scanner;
public class HelloWorld{
    public static void main(String[] args){
        Scanner in = new Scanner(System.in);
        System.out.println("Enter your number : ");
        int n = in.nextInt();//6
        int sum = 0;
        for (int i = 1; i < n; i++){
            if(n%i==0){
                sum+=i;
                System.out.println(sum);

            }
        }
        if(sum==n){
            System.out.println(n +" is perfect number");
        }else{
            System.out.println(n +" is not perfect number");
    }
  }
 }
 ```
 
 ## Find the given number is strong number are not
 ```java 
import java.util.Scanner;
public class basic{
    public static void main(String[] args){
        int num,orgnum,rem,factorial,sum=0;
        Scanner in = new Scanner(System.in);
        System.out.println("Enter your number : ");
        num = in.nextInt();
        orgnum = num;
        while(num>0){
            rem=num%10;
            factorial = 1;
            for(int i = 1; i<=rem; i++){
                factorial*=i;
            }
            sum+=factorial;
            num=num/10;
            }
        if(sum==orgnum){
            System.out.println(orgnum + " is a strong number");
        }else{
            System.out.println(orgnum + " is not a strong number");
        }
      }
    }
```

## Write a Java method to compute the future investment value at a given interest rate for a specified number of years. Sample data (Monthly compounded) and Output, 
Input the investment amount: 1000, Input the rate of interest: 10, Input number of years: 5

#### Expected Output:
|Years  |  FutureValue|
|------|------------|
|1       |     1104.71|

```java
import java.lang.Math;

public class compounded {
    public static void main(String[] args) {

        int investmentAmount = 1000;
        double monthlyInterestRate = 0.00833;
        int years = 1;

       double result = investmentAmount * Math.pow((1 + monthlyInterestRate), years * 12);
        System.out.println(result);
    }
}
```

# Access modifier
```java
package com.fwsa;
import java.lang.String;

    class parent {
        private int atm = 1234;
        String name = "mukil";
        protected String gen = "m";
        
        private int atmpin(){
            return atm;
        }

        String na(){
            return name;
        }

        public String gender(){
            return gen;
        }

        public static void main(String args[]){
            parent obj = new parent();

            System.out.println(obj.atmpin());
            System.out.println(obj.na());
            System.out.println(obj.gender());
        }
    }
  ```

# OOPS

## Java single Inheritance
```java
package com.fwsa;
public class madhan {
    public void number(){
        System.out.println("9791836225");
    }
}

class mukil extends madhan{
    public void name(){
        System.out.println("Hello i am mukil");
    }

    public static void main(String args[]){
        mukil obj = new mukil();
        obj.number();
        obj.name();
    }
}
```

## Java multilevel Inheritance
```java
package com.fwsa;

public class madhan {

    public void number(){
        System.out.println("9791836225");
    }
}

class mukil extends madhan{
    public void from(){
        System.out.println("Hello i am from thanjavur");
    }
}

class prasanna extends mukil{
    public void name(){
        System.out.println("Hello I am prasanna");
    }

    public static void main(String args[]){
        prasanna obj = new prasanna();
        obj.number();
        obj.name();
        obj.from();
    }
}
```

## super Keyword in Inheritance
```java
package com.fwsa;

public class madhan {

    public void number(){
        System.out.println("9791836225");
    }
    public void name(){
        System.out.println("Hello I am madhan");
    }
}

class mukil extends madhan{
    public void from(){
        System.out.println("Hello i am from thanjavur");
    }
}

class prasanna extends mukil{
    public void name(){
        System.out.println("Hello I am prasanna");
    }
    public void from(){
        super.from();
        System.out.println("Hello i am from chennai");
    }

    public static void main(String args[]){
        prasanna obj = new prasanna();
        obj.number();
        obj.name();
        obj.from();
    }
}
```

## Java Abstract Class and Abstract Methods
```java
package com.fwsa;
abstract class madhan {

    abstract void number();
    public void name(){
        System.out.println("Hello I am madhan");
    }
}

class mukil extends madhan{
    public void number(){
        System.out.println("My number is 9791836225");
    }

    public static void main(String args[]){
        mukil obj = new mukil();
        obj.number();
        obj.name();
    }
}
```

## Java Interface

```java
package com.prasanna;

interface sathish {
    void relationship();
    void meeting();
}

class Keerthi implements sathish {
    @Override
    public void relationship() {
        System.out.println("we are friends");
    }

    public void meeting(){
        System.out.println("we meat in college");
    }
}

class Main {
    public static void main(String[] args) {
        Keerthi obj = new Keerthi();
        obj.relationship();
        obj.meeting();
    }
}
```

## Multi interface
```java
package com.prasanna;

interface sathish {
    void relationship();
    void meeting();
}

interface santhosh {
    void number();
    void name();
}

class Keerthi implements sathish, santhosh {
    @Override
    public void relationship() {
        System.out.println("we are friends");
    }

    public void meeting(){
        System.out.println("we meat in college");
    }

    public void number(){
        System.out.println("My number is 9791836225");
    }

    public void name(){
        System.out.println("My name is Prasanna");
    }
}

class Main {
    public static void main(String[] args) {
        Keerthi obj = new Keerthi();
        obj.relationship();
        obj.meeting();
        obj.name();
        obj.number();
    }
}
```

## Java Polymorphism overriding
```java
package com.fwsa;

public class poly {
    public void Coffee() {
        System.out.println("Coffee is too hot");
    }
}

class curd extends poly {
    public void Coffee() {
        System.out.println("Coffee is too cool");
    }

    public static void main(String args[]) {
        poly obj1 = new poly();
        curd obj = new curd();
        obj1.Coffee();
        obj.Coffee();
    }
}
```

## Java Polymorphism Method Overloading
```java
package com.fwsa;

public class poly {
    public int Coffee( int number) {
        System.out.println("My number is " + number );
        return number;
    }


    public String Coffee(String name) {
        System.out.println("My name is " + name );
        return name;
    }

    public static void main(String args[]) {
        poly obj1 = new poly();
        obj1.Coffee(1836);
    }
}
```

## Java Encapsulation
```java
package com.fwsa;
import java.lang.String;

public class userdata {
    protected int phonenumber;
    private String name;

    public int setnumber(int phonenumber) {
        return phonenumber;
    }

    public String getna(){
        return name;
    }

    public void setna(String name){
        this.name = name;
    }

    public static void main(String args[]){
        userdata obj = new userdata();
        obj.setna("Sam");

        System.out.println(obj.setnumber(1234567890) + " " + obj.getna());
    }
}
```
