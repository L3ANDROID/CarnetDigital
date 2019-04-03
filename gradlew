package com.lmorocho.app;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.*;

public class MainActivity extends AppCompatActivity {

    private EditText prac1, prac2,lab1,lab2,lab3,lab4;
    private TextView promTeo,promLab,promTot,estadoD,estadoA;
    private RadioGroup tipoProm;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        prac1 = findViewById(R.id.pt1);
        prac2 = findViewById(R.id.pt2);
        lab1 = findViewById(R.id.pl1);
        lab2 = findViewById(R.id.pl2);
        lab3 = findViewById(R.id.pl3);
        lab4 = findViewById(R.id.pl4);
        promTeo = findViewById(R.id.promTeorico);
        promLab = findViewById(R.id.promLaboratorio);
        promTot = findViewById(R.id.promedioTotal);
        estadoA = findViewById(R.id.aprobado);
        estadoD = findViewById(R.id.desaprobado);
        tipoProm = findViewById(R.id.tipoPromedio);
    }
    public void programa(View view){
        promedioTeorico(null);
       promedioLaboratorio(null);
        promedioTotal(null);
    }

    public double promedioTeorico(View view) {

        int n1=Integer.parseInt(prac1.getText().toString());
        int n2=Integer.parseInt(prac2.getText().toString());

        double prom1=(n1+n2)/2;
        promTeo.setText("Prom:"+prom1);
        return prom1;
    }

    public double promedioLaboratorio(View view) {

        int n1=Integer.parseInt(lab1.getText().toString());
        int n2=Integer.parseInt(lab2.getText().toString());
        int n3=Integer.parseInt(lab3.getText().toString());
        int n4=Integer.parseInt(lab4.getText().toString());

        double prom2=(n1+n2+n3+n4)/4;
        promLab.setText("Prom:"+prom2);
        return prom2;
    }

    public void promedioTotal(View view) {

        double prom1=promedioTeorico(null);
        double prom2=promedioLaboratorio(null);
        double promT=(prom1*0.3+prom2*0.7);
        promTot.setText("Promedio:"+promT);
        if(promT>=13){
            estadoD.setText("");
            estadoA.setText("Aprobado!");
        }else{
            estadoA.setText("");
            estadoD.setText("Desaprobado :c");
        }
    }
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          