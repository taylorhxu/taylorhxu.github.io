---
layout: post
title: C in Mathematical Programming I
date: 2015-02-11 13:54:09
categories: programming
summary: This project is aiming to write and compute quadratic equations by applying functions.
tags: c, programming, quadratic equations,

---

This project is aiming to write and compute quadratic equations by applying functions. 

####Question: Focus on quadratic equations of real coefficients

Requirement: Using int `quad_roots` (`double a2`, `double a1`, `double a0`, `double *r1`, `double* r2` ) to write the programme.

###Code:

```{c}
#include <stdio.h>
#include <math.h> 
int quad_roots(double a2,double a1,double a0,double *r1,double* r2 )
{   double d;
	d=a1*a1-4*a2*a0;

	if (a2==0)
      { if (a1 == 0)
           { if(a0 == 0) /*case of when a2,a1 and a0 all equal to 0*/
	               {return(-3);}
	         else  /*case of when a2,a1 both equal to 0 a0 not equal to 0 */
	               {return(-2);}
            }
         else
            {*r1= -a0/a1; return(-1);}
	  }

    else   
       { if (d > 0) /*case of two distinct real roots*/
		    {*r1=(-a1+sqrt(d))/(2*a2);
			 *r2=(-a1-sqrt(d))/(2*a2);     return(2); }

		 else if (d == 0) /*case of repeated real root*/
		    {*r1=(-a1)/(2*a2);        return(1);}

		 else /*case of complex roots*/
		    {*r1=(-a1)/(2*a2);
			 *r2=sqrt(-d)/(2*a2);  return(0); }
	  }

}


int main(void)
{double a2, a1, a0, root1, root2;
 float determinant;
 int quad_case;

 printf("         Name:<Jun Zhou>\n");
 printf("          CID: <00685482>, LIBRARY NO: <0246229583>\n");
 printf("Email Address: <jun.zhou11@imperial.ac.uk>\n");
 printf("  Course Code: <M3SC>\n");

 printf("Enter coefficients of Linear Equation a2*x^2+a1*x+a0=0 \n");
 printf("\n");
 printf("In the order a2,a1,a0 separated spaces");
 scanf("%lf %lf %lf", &a2,&a1,&a0);

 determinant=a1*a1-4*a2*a0;
 quad_case=quad_roots(a2,a1, a0, &root1, &root2 );
 switch (quad_case)
	{   case -3:printf("There are infinitely many solutions \n");break;
		case -2:printf("There is no solution \n"); break;
		case -1:printf("The solution is %lf \n",root1); break;
		case 2:printf("The real solutions are %lf and %lf \n",root1,root2);
		       printf("The determinant of the function is %f\n",determinant);    break;
		case 1:printf("There is only one real solution, which is %lf \n",root1);
			   printf("The determinant of the function is %f\n",determinant);  break;
		case 0:printf("The solutions are complex numbers\n");
			   printf("The first solution is %lf+%lfi\n",root1,root2);
			   printf("The second solution is %lf-%lfi\n",root1,root2);    
			   printf("The determinant of the function is %f\n",determinant);  break;
	   default:printf("Wrong input");
	}

	return(0);


}
```

###Result:


| Input       | Result  |
--- | --- |
| a2,a1,a0=0,0,1 |There is no solution|
| a2,a1,a0=0,1,2 |The solution is -2.000000|
| a2,a1,a0=1,3,1|  he real solutions are -0.381966 and -2.618034 |
|  | The determinant of the function is 5.000000|
| a2,a1,a0=1,2,1 |  There is only one real solution, which is -1.000000. The determinant of the function is 0.000000|
|a2,a1,a0=0,0,0|There are infinitely many solutions |
|a2,a1,a0=2,1,3|The solutions are complex numbers. The first solution is -0.250000+1.198958i. The second solution is -0.250000-1.198958i. The determinant of the function is -23.000000|



*Comment: the outputs are correct with different and small values of coefficients. *
