 #include <stdio.h>
 
 int main(void)
 {
 	int month;
 	int day;
    printf("Ingrese el numero del mes de su nacimiento:\n");
    scanf("%d", &month);

    printf("Ingrese el dia de su nacimiento:\n" );
    scanf("%d", &day);
    
    if ( (day <= 20 && month ==1) || ( month == 12 && day >= 22) ){

    	printf("\n Usted es Capricornio \n");
    }

    if ( ( day >= 22 && month == 1) || ( month == 2 && day <= 21) ){

    	printf("\n Usted es Acuario \n");
    }
    if ( (day >= 22 && month ==2) || ( month == 3 && day <= 20) ){

        printf("\n Usted es Piscis \n");
    }
    if ( (day >= 21 && month == 3) || ( month == 4 && day <= 20) ){

        printf("\n Usted es Aries \n");
    }
    if ( (day >= 21 && month == 4) || ( month == 5 && day <= 21) ){

        printf("\n Usted es Tauro \n");
    }
    if ( (day >= 22 && month == 5) || ( month == 6 && day <= 21) ){

        printf("\n Usted es Geminis \n");
    }
    if ( (day >= 22 && month == 6) || ( month == 7 && day <= 22) ){

        printf("\n Usted es Cancer \n");
    }    
    if ( (day >= 23 && month == 7) || ( month == 8 && day <= 22) ){

        printf("\n Usted es Leo \n");
    }    
    if ( (day >= 23 && month == 8) || ( month == 9 && day <= 22) ){

        printf("\n Usted es Virgo \n");
    }  
    if ( (day >= 23 && month == 9) || ( month == 10 && day <= 22) ){

        printf("\n Usted es Libra \n");
    }  
    if ( (day >= 23 && month == 10) || ( month == 11 && day <= 21) ){

        printf("\n Usted es Escorpio \n");
    }  
    if ( (day >= 22 && month == 11) || ( month == 12 && day <= 21) ){

        printf("\n Usted es Sagitario \n");
    }  


    return 0;
 }



