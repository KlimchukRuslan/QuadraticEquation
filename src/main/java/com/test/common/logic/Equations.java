package com.test.common.logic;

public class Equations {

    public String getResultQuadraticEquation(double a, double b, double c){
        String result;
        double d = b * b - 4 * a * c;

        if (d > 0) {
            double x1 = (-b - Math.sqrt(d)) / (2 * a);
            double x2 = (-b + Math.sqrt(d)) / (2 * a);
            result = "Корни уравнения: x1 = " + x1 + ", x2 = " + x2;
        } else if (d == 0) {
            double x;
            x = -b / (2 * a);
            result = "Уравнение имеет единственный корень: x = " + x;
        } else {
            result = "Уравнение не имеет действительных корней";
        }
        return result;
    }


}
